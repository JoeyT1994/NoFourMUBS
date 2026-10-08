import CircleFullInterface
import CircleForestAssembly0004
import CircleForestChunk0018
import CircleForestChunk0019
import CircleForestChunk0020
import CircleForestChunk0021
import CircleForestChunk0022
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_4087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_4087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4087 := by
  apply coveredState_split_literal (state := state_4087) 1
    state_4088 state_4145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4088
  · exact cover_4145
#print axioms cover_4087

def state_3889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_3889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3889 := by
  apply coveredState_split_literal (state := state_3889) 0
    state_3890 state_4087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3890
  · exact cover_4087
#print axioms cover_3889

def state_3585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_3585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3585 := by
  apply coveredState_split_literal (state := state_3585) 4
    state_3586 state_3889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3586
  · exact cover_3889
#print axioms cover_3585

def state_4220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_4220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4220 := by
  apply coveredState_split_literal (state := state_4220) 1
    state_4221 state_4270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4221
  · exact cover_4270
#print axioms cover_4220

def state_4219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_4219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4219 := by
  apply coveredState_split_literal (state := state_4219) 0
    state_4220 state_4287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4220
  · exact cover_4287
#print axioms cover_4219

def state_4336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_4336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4336 := by
  apply coveredState_split_literal (state := state_4336) 2
    state_4337 state_4356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4337
  · exact cover_4356
#print axioms cover_4336

def state_4335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_4335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4335 := by
  apply coveredState_split_literal (state := state_4335) 1
    state_4336 state_4411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4336
  · exact cover_4411
#print axioms cover_4335

def state_4447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_4447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4447 := by
  apply coveredState_split_literal (state := state_4447) 2
    state_4448 state_4461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4448
  · exact cover_4461
#print axioms cover_4447

def state_4616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_4616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4616 := by
  apply coveredState_split_literal (state := state_4616) 4
    state_4617 state_4660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4617
  · exact cover_4660
#print axioms cover_4616

def state_4568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_4568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4568 := by
  apply coveredState_split_literal (state := state_4568) 3
    state_4569 state_4616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4569
  · exact cover_4616
#print axioms cover_4568

def state_4518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_4518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4518 := by
  apply coveredState_split_literal (state := state_4518) 2
    state_4519 state_4568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4519
  · exact cover_4568
#print axioms cover_4518

def state_4446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_4446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4446 := by
  apply coveredState_split_literal (state := state_4446) 1
    state_4447 state_4518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4447
  · exact cover_4518
#print axioms cover_4446

def state_4334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_4334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4334 := by
  apply coveredState_split_literal (state := state_4334) 0
    state_4335 state_4446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4335
  · exact cover_4446
#print axioms cover_4334

def state_4218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_4218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4218 := by
  apply coveredState_split_literal (state := state_4218) 4
    state_4219 state_4334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4219
  · exact cover_4334
#print axioms cover_4218

def state_3584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_3584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3584 := by
  apply coveredState_split_literal (state := state_3584) 3
    state_3585 state_4218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3585
  · exact cover_4218
#print axioms cover_3584

def state_2934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_2934 := by
  apply coveredState_split_literal (state := state_2934) 2
    state_2935 state_3584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2935
  · exact cover_3584
#print axioms cover_2934

def state_4743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_4743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4743 := by
  apply coveredState_split_literal (state := state_4743) 3
    state_4744 state_4759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4744
  · exact cover_4759
#print axioms cover_4743

def state_4742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_4742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4742 := by
  apply coveredState_split_literal (state := state_4742) 4
    state_4743 state_4812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4743
  · exact cover_4812
#print axioms cover_4742

def state_4740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_4740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4740 := by
  apply coveredState_split_literal (state := state_4740) 3
    state_4741 state_4742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4741
  · exact cover_4742
#print axioms cover_4740

def state_4739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_4739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4739 := by
  apply coveredState_split_literal (state := state_4739) 2
    state_4740 state_4823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4740
  · exact cover_4823
#print axioms cover_4739

def state_4687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_4687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4687 := by
  apply coveredState_split_literal (state := state_4687) 1
    state_4688 state_4739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4688
  · exact cover_4739
#print axioms cover_4687

def state_4882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_4882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4882 := by
  apply coveredState_split_literal (state := state_4882) 1
    state_4883 state_4940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4883
  · exact cover_4940
#print axioms cover_4882

def state_4686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_4686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4686 := by
  apply coveredState_split_literal (state := state_4686) 0
    state_4687 state_4882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4687
  · exact cover_4882
#print axioms cover_4686

def state_4988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_4988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4988 := by
  apply coveredState_split_literal (state := state_4988) 1
    state_4989 state_5000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4989
  · exact cover_5000
#print axioms cover_4988

def state_4987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_4987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4987 := by
  apply coveredState_split_literal (state := state_4987) 0
    state_4988 state_5055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4988
  · exact cover_5055
#print axioms cover_4987

def state_4685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_4685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4685 := by
  apply coveredState_split_literal (state := state_4685) 4
    state_4686 state_4987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4686
  · exact cover_4987
#print axioms cover_4685

def state_5104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_5104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5104 := by
  apply coveredState_split_literal (state := state_5104) 3
    state_5105 state_5140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5105
  · exact cover_5140
#print axioms cover_5104

def state_5103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_5103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5103 := by
  apply coveredState_split_literal (state := state_5103) 2
    state_5104 state_5173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5104
  · exact cover_5173
#print axioms cover_5103

def state_5186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_5186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5186 := by
  apply coveredState_split_literal (state := state_5186) 4
    state_5187 state_5202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5187
  · exact cover_5202
#print axioms cover_5186

def state_5185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_5185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5185 := by
  apply coveredState_split_literal (state := state_5185) 3
    state_5186 state_5255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5186
  · exact cover_5255
#print axioms cover_5185

def state_5184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_5184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5184 := by
  apply coveredState_split_literal (state := state_5184) 2
    state_5185 state_5264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5185
  · exact cover_5264
#print axioms cover_5184

def state_5102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_5102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5102 := by
  apply coveredState_split_literal (state := state_5102) 1
    state_5103 state_5184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5103
  · exact cover_5184
#print axioms cover_5102
end Mub6.Numerical.CircleFullPrototype.Forest
