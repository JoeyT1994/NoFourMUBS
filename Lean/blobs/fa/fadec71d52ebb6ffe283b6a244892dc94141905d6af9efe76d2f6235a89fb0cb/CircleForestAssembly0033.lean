import CircleFullInterface
import CircleForestAssembly0032
import CircleForestChunk0132
import CircleForestChunk0133
import CircleForestChunk0134
import CircleForestChunk0135
import CircleForestChunk0136
import CircleForestChunk0137
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_969203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 56)))
theorem cover_969203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969203 := by
  apply coveredState_split_literal (state := state_969203) 2
    state_969204 state_969243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969204
  · exact cover_969243
#print axioms cover_969203

def state_969288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 91) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 56)))
theorem cover_969288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969288 := by
  apply coveredState_split_literal (state := state_969288) 2
    state_969289 state_969342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969289
  · exact cover_969342
#print axioms cover_969288

def state_969202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 56)))
theorem cover_969202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969202 := by
  apply coveredState_split_literal (state := state_969202) 1
    state_969203 state_969288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969203
  · exact cover_969288
#print axioms cover_969202

def state_969201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 56)))
theorem cover_969201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969201 := by
  apply coveredState_split_literal (state := state_969201) 0
    state_969202 state_969385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969202
  · exact cover_969385
#print axioms cover_969201

def state_969200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 56)))
theorem cover_969200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969200 := by
  apply coveredState_split_literal (state := state_969200) 3
    state_969201 state_969422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969201
  · exact cover_969422
#print axioms cover_969200

def state_969199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 28)))
theorem cover_969199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969199 := by
  apply coveredState_split_literal (state := state_969199) 4
    state_969200 state_969467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969200
  · exact cover_969467
#print axioms cover_969199

def state_969549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 56)))
theorem cover_969549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969549 := by
  apply coveredState_split_literal (state := state_969549) 0
    state_969550 state_969603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969550
  · exact cover_969603
#print axioms cover_969549

def state_969489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 56)))
theorem cover_969489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969489 := by
  apply coveredState_split_literal (state := state_969489) 3
    state_969490 state_969549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969490
  · exact cover_969549
#print axioms cover_969489

def state_969488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 28)))
theorem cover_969488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969488 := by
  apply coveredState_split_literal (state := state_969488) 4
    state_969489 state_969658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969489
  · exact cover_969658
#print axioms cover_969488

def state_969198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_969198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969198 := by
  apply coveredState_split_literal (state := state_969198) 2
    state_969199 state_969488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969199
  · exact cover_969488
#print axioms cover_969198

def state_969042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_969042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969042 := by
  apply coveredState_split_literal (state := state_969042) 1
    state_969043 state_969198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969043
  · exact cover_969198
#print axioms cover_969042

def state_969041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_969041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969041 := by
  apply coveredState_split_literal (state := state_969041) 0
    state_969042 state_969679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969042
  · exact cover_969679
#print axioms cover_969041

def state_969040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 14)))
theorem cover_969040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969040 := by
  apply coveredState_split_literal (state := state_969040) 4
    state_969041 state_969740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969041
  · exact cover_969740
#print axioms cover_969040

def state_969039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 14)))
theorem cover_969039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969039 := by
  apply coveredState_split_literal (state := state_969039) 3
    state_969040 state_969755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969040
  · exact cover_969755
#print axioms cover_969039

def state_969811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 28)))
theorem cover_969811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969811 := by
  apply coveredState_split_literal (state := state_969811) 1
    state_969812 state_969875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969812
  · exact cover_969875
#print axioms cover_969811

def state_969810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 28)))
theorem cover_969810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969810 := by
  apply coveredState_split_literal (state := state_969810) 0
    state_969811 state_969906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969811
  · exact cover_969906
#print axioms cover_969810

def state_969809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 14)))
theorem cover_969809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969809 := by
  apply coveredState_split_literal (state := state_969809) 4
    state_969810 state_969937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969810
  · exact cover_969937
#print axioms cover_969809

def state_969943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 28)))
theorem cover_969943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969943 := by
  apply coveredState_split_literal (state := state_969943) 3
    state_969944 state_970003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969944
  · exact cover_970003
#print axioms cover_969943

def state_970016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 28)))
theorem cover_970016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970016 := by
  apply coveredState_split_literal (state := state_970016) 3
    state_970017 state_970072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970017
  · exact cover_970072
#print axioms cover_970016

def state_969942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 28)))
theorem cover_969942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969942 := by
  apply coveredState_split_literal (state := state_969942) 1
    state_969943 state_970016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969943
  · exact cover_970016
#print axioms cover_969942

def state_970095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 28)))
theorem cover_970095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970095 := by
  apply coveredState_split_literal (state := state_970095) 1
    state_970096 state_970137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970096
  · exact cover_970137
#print axioms cover_970095

def state_969941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 28)))
theorem cover_969941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969941 := by
  apply coveredState_split_literal (state := state_969941) 0
    state_969942 state_970095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969942
  · exact cover_970095
#print axioms cover_969941

def state_969940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 14)))
theorem cover_969940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969940 := by
  apply coveredState_split_literal (state := state_969940) 4
    state_969941 state_970178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969941
  · exact cover_970178
#print axioms cover_969940

def state_969808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 14)))
theorem cover_969808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969808 := by
  apply coveredState_split_literal (state := state_969808) 3
    state_969809 state_969940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969809
  · exact cover_969940
#print axioms cover_969808

def state_969038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_969038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969038 := by
  apply coveredState_split_literal (state := state_969038) 2
    state_969039 state_969808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969039
  · exact cover_969808
#print axioms cover_969038

def state_970201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 56)))
theorem cover_970201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970201 := by
  apply coveredState_split_literal (state := state_970201) 0
    state_970202 state_970265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970202
  · exact cover_970265
#print axioms cover_970201

def state_970200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 56)))
theorem cover_970200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970200 := by
  apply coveredState_split_literal (state := state_970200) 3
    state_970201 state_970304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970201
  · exact cover_970304
#print axioms cover_970200

def state_970317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 57)))
theorem cover_970317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970317 := by
  apply coveredState_split_literal (state := state_970317) 3
    state_970318 state_970379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970318
  · exact cover_970379
#print axioms cover_970317

def state_970199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 28)))
theorem cover_970199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970199 := by
  apply coveredState_split_literal (state := state_970199) 4
    state_970200 state_970317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970200
  · exact cover_970317
#print axioms cover_970199

def state_970198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_970198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970198 := by
  apply coveredState_split_literal (state := state_970198) 2
    state_970199 state_970412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970199
  · exact cover_970412
#print axioms cover_970198

def state_970484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 57)))
theorem cover_970484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970484 := by
  apply coveredState_split_literal (state := state_970484) 3
    state_970485 state_970536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970485
  · exact cover_970536
#print axioms cover_970484

def state_970474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 28)))
theorem cover_970474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970474 := by
  apply coveredState_split_literal (state := state_970474) 4
    state_970475 state_970484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970475
  · exact cover_970484
#print axioms cover_970474
end Mub6.Numerical.CircleFullD0.Forest
