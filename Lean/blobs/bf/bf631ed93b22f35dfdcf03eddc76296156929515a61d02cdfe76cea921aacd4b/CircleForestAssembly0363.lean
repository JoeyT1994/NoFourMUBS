import CircleFullInterface
import CircleForestAssembly0362
import CircleForestChunk1410
import CircleForestChunk1411
import CircleForestChunk1412
import CircleForestChunk1413
import CircleForestChunk1414
import CircleForestChunk1415
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1639410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 9)))
theorem cover_1639410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639410 := by
  apply coveredState_split_literal (state := state_1639410) 0
    state_1639411 state_1639458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639411
  · exact cover_1639458
#print axioms cover_1639410

def state_1639386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 9)))
theorem cover_1639386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639386 := by
  apply coveredState_split_literal (state := state_1639386) 1
    state_1639387 state_1639410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639387
  · exact cover_1639410
#print axioms cover_1639386

def state_1639380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 4)))
theorem cover_1639380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639380 := by
  apply coveredState_split_literal (state := state_1639380) 4
    state_1639381 state_1639386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639381
  · exact cover_1639386
#print axioms cover_1639380

def state_1639379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
theorem cover_1639379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639379 := by
  apply coveredState_split_literal (state := state_1639379) 2
    state_1639380 state_1639535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639380
  · exact cover_1639535
#print axioms cover_1639379

def state_1635045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1635045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635045 := by
  apply coveredState_split_literal (state := state_1635045) 3
    state_1635046 state_1639379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635046
  · exact cover_1639379
#print axioms cover_1635045

def state_1639632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
theorem cover_1639632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639632 := by
  apply coveredState_split_literal (state := state_1639632) 1
    state_1639633 state_1639694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639633
  · exact cover_1639694
#print axioms cover_1639632

def state_1639631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
theorem cover_1639631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639631 := by
  apply coveredState_split_literal (state := state_1639631) 0
    state_1639632 state_1639701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639632
  · exact cover_1639701
#print axioms cover_1639631

def state_1639737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
theorem cover_1639737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639737 := by
  apply coveredState_split_literal (state := state_1639737) 3
    state_1639738 state_1639777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639738
  · exact cover_1639777
#print axioms cover_1639737

def state_1639709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 9)))
theorem cover_1639709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639709 := by
  apply coveredState_split_literal (state := state_1639709) 4
    state_1639710 state_1639737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639710
  · exact cover_1639737
#print axioms cover_1639709

def state_1639708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1639708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639708 := by
  apply coveredState_split_literal (state := state_1639708) 2
    state_1639709 state_1639810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639709
  · exact cover_1639810
#print axioms cover_1639708

def state_1639707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1639707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639707 := by
  apply coveredState_split_literal (state := state_1639707) 1
    state_1639708 state_1639819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639708
  · exact cover_1639819
#print axioms cover_1639707

def state_1639829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1639829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639829 := by
  apply coveredState_split_literal (state := state_1639829) 2
    state_1639830 state_1639861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639830
  · exact cover_1639861
#print axioms cover_1639829

def state_1639828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1639828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639828 := by
  apply coveredState_split_literal (state := state_1639828) 1
    state_1639829 state_1639894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639829
  · exact cover_1639894
#print axioms cover_1639828

def state_1639706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1639706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639706 := by
  apply coveredState_split_literal (state := state_1639706) 0
    state_1639707 state_1639828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639707
  · exact cover_1639828
#print axioms cover_1639706

def state_1639630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1639630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639630 := by
  apply coveredState_split_literal (state := state_1639630) 3
    state_1639631 state_1639706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639631
  · exact cover_1639706
#print axioms cover_1639630

def state_1639566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
theorem cover_1639566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639566 := by
  apply coveredState_split_literal (state := state_1639566) 4
    state_1639567 state_1639630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639567
  · exact cover_1639630
#print axioms cover_1639566

def state_1639565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_1639565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639565 := by
  apply coveredState_split_literal (state := state_1639565) 2
    state_1639566 state_1639903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639566
  · exact cover_1639903
#print axioms cover_1639565

def state_1639564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1639564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639564 := by
  apply coveredState_split_literal (state := state_1639564) 3
    state_1639565 state_1639926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639565
  · exact cover_1639926
#print axioms cover_1639564

def state_1635044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1635044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635044 := by
  apply coveredState_split_literal (state := state_1635044) 1
    state_1635045 state_1639564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635045
  · exact cover_1639564
#print axioms cover_1635044

def state_1640001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1640001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640001 := by
  apply coveredState_split_literal (state := state_1640001) 1
    state_1640002 state_1640043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640002
  · exact cover_1640043
#print axioms cover_1640001

def state_1640000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1640000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640000 := by
  apply coveredState_split_literal (state := state_1640000) 0
    state_1640001 state_1640082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640001
  · exact cover_1640082
#print axioms cover_1640000

def state_1639988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
theorem cover_1639988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639988 := by
  apply coveredState_split_literal (state := state_1639988) 4
    state_1639989 state_1640000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639989
  · exact cover_1640000
#print axioms cover_1639988

def state_1640175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
theorem cover_1640175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640175 := by
  apply coveredState_split_literal (state := state_1640175) 3
    state_1640176 state_1640191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640176
  · exact cover_1640191
#print axioms cover_1640175

def state_1640174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
theorem cover_1640174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640174 := by
  apply coveredState_split_literal (state := state_1640174) 0
    state_1640175 state_1640242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640175
  · exact cover_1640242
#print axioms cover_1640174

def state_1640164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
theorem cover_1640164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640164 := by
  apply coveredState_split_literal (state := state_1640164) 1
    state_1640165 state_1640174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640165
  · exact cover_1640174
#print axioms cover_1640164

def state_1640302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 51 else 39)))
theorem cover_1640302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640302 := by
  apply coveredState_split_literal (state := state_1640302) 2
    state_1640303 state_1640348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640303
  · exact cover_1640348
#print axioms cover_1640302

def state_1640300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 51 else 19)))
theorem cover_1640300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640300 := by
  apply coveredState_split_literal (state := state_1640300) 4
    state_1640301 state_1640302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640301
  · exact cover_1640302
#print axioms cover_1640300

def state_1640282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
theorem cover_1640282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640282 := by
  apply coveredState_split_literal (state := state_1640282) 3
    state_1640283 state_1640300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640283
  · exact cover_1640300
#print axioms cover_1640282

def state_1640281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
theorem cover_1640281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640281 := by
  apply coveredState_split_literal (state := state_1640281) 0
    state_1640282 state_1640395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640282
  · exact cover_1640395
#print axioms cover_1640281

def state_1640247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
theorem cover_1640247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640247 := by
  apply coveredState_split_literal (state := state_1640247) 1
    state_1640248 state_1640281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640248
  · exact cover_1640281
#print axioms cover_1640247

def state_1640163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 19)))
theorem cover_1640163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640163 := by
  apply coveredState_split_literal (state := state_1640163) 2
    state_1640164 state_1640247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640164
  · exact cover_1640247
#print axioms cover_1640163

def state_1640145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 9)))
theorem cover_1640145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640145 := by
  apply coveredState_split_literal (state := state_1640145) 4
    state_1640146 state_1640163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640146
  · exact cover_1640163
#print axioms cover_1640145
end Mub6.Numerical.CircleFullD0.Forest
