import CircleFullInterface
import CircleForestAssembly0047
import CircleForestAssembly0050
import CircleForestAssembly0058
import CircleForestChunk0233
import CircleForestChunk0234
import CircleForestChunk0235
import CircleForestChunk0236
import CircleForestChunk0237
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_77318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_77318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77318 := by
  apply coveredState_split_literal (state := state_77318) 1
    state_77319 state_77430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77319
  · exact cover_77430
#print axioms cover_77318

def state_77236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_77236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77236 := by
  apply coveredState_split_literal (state := state_77236) 0
    state_77237 state_77318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77237
  · exact cover_77318
#print axioms cover_77236

def state_77235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_77235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77235 := by
  apply coveredState_split_literal (state := state_77235) 4
    state_77236 state_77443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77236
  · exact cover_77443
#print axioms cover_77235

def state_77491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_77491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77491 := by
  apply coveredState_split_literal (state := state_77491) 4
    state_77492 state_77495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77492
  · exact cover_77495
#print axioms cover_77491

def state_77490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_77490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77490 := by
  apply coveredState_split_literal (state := state_77490) 3
    state_77491 state_77558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77491
  · exact cover_77558
#print axioms cover_77490

def state_77489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_77489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77489 := by
  apply coveredState_split_literal (state := state_77489) 2
    state_77490 state_77567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77490
  · exact cover_77567
#print axioms cover_77489

def state_77589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_77589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77589 := by
  apply coveredState_split_literal (state := state_77589) 3
    state_77590 state_77651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77590
  · exact cover_77651
#print axioms cover_77589

def state_77588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_77588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77588 := by
  apply coveredState_split_literal (state := state_77588) 2
    state_77589 state_77666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77589
  · exact cover_77666
#print axioms cover_77588

def state_77488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_77488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77488 := by
  apply coveredState_split_literal (state := state_77488) 1
    state_77489 state_77588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77489
  · exact cover_77588
#print axioms cover_77488

def state_77487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_77487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77487 := by
  apply coveredState_split_literal (state := state_77487) 0
    state_77488 state_77691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77488
  · exact cover_77691
#print axioms cover_77487

def state_77756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_77756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77756 := by
  apply coveredState_split_literal (state := state_77756) 2
    state_77757 state_77814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77757
  · exact cover_77814
#print axioms cover_77756

def state_77823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_77823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77823 := by
  apply coveredState_split_literal (state := state_77823) 2
    state_77824 state_77873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77824
  · exact cover_77873
#print axioms cover_77823

def state_77755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_77755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77755 := by
  apply coveredState_split_literal (state := state_77755) 1
    state_77756 state_77823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77756
  · exact cover_77823
#print axioms cover_77755

def state_77889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_77889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77889 := by
  apply coveredState_split_literal (state := state_77889) 2
    state_77890 state_77949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77890
  · exact cover_77949
#print axioms cover_77889

def state_77972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_77972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77972 := by
  apply coveredState_split_literal (state := state_77972) 0
    state_77973 state_78032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77973
  · exact cover_78032
#print axioms cover_77972

def state_77971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_77971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77971 := by
  apply coveredState_split_literal (state := state_77971) 4
    state_77972 state_78087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77972
  · exact cover_78087
#print axioms cover_77971

def state_77970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_77970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77970 := by
  apply coveredState_split_literal (state := state_77970) 2
    state_77971 state_78116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77971
  · exact cover_78116
#print axioms cover_77970

def state_77969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_77969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77969 := by
  apply coveredState_split_literal (state := state_77969) 4
    state_77970 state_78145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77970
  · exact cover_78145
#print axioms cover_77969

def state_77955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_77955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77955 := by
  apply coveredState_split_literal (state := state_77955) 3
    state_77956 state_77969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77956
  · exact cover_77969
#print axioms cover_77955

def state_77954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_77954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77954 := by
  apply coveredState_split_literal (state := state_77954) 2
    state_77955 state_78146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77955
  · exact cover_78146
#print axioms cover_77954

def state_77888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_77888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77888 := by
  apply coveredState_split_literal (state := state_77888) 1
    state_77889 state_77954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77889
  · exact cover_77954
#print axioms cover_77888

def state_77754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_77754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77754 := by
  apply coveredState_split_literal (state := state_77754) 0
    state_77755 state_77888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77755
  · exact cover_77888
#print axioms cover_77754

def state_77486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_77486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77486 := by
  apply coveredState_split_literal (state := state_77486) 4
    state_77487 state_77754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77487
  · exact cover_77754
#print axioms cover_77486

def state_77234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_77234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77234 := by
  apply coveredState_split_literal (state := state_77234) 3
    state_77235 state_77486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77235
  · exact cover_77486
#print axioms cover_77234

def state_68776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_68776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68776 := by
  apply coveredState_split_literal (state := state_68776) 2
    state_68777 state_77234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68777
  · exact cover_77234
#print axioms cover_68776

def state_66444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_66444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66444 := by
  apply coveredState_split_literal (state := state_66444) 1
    state_66445 state_68776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66445
  · exact cover_68776
#print axioms cover_66444

def state_45478 : State := rootState
theorem cover_45478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45478 := by
  apply coveredState_split_literal (state := state_45478) 0
    state_45479 state_66444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45479
  · exact cover_66444
#print axioms cover_45478

def state_132230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_132230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132230 := by
  apply coveredState_split_literal (state := state_132230) 1
    state_132231 state_132278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132231
  · exact cover_132278
#print axioms cover_132230

def state_132229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_132229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132229 := by
  apply coveredState_split_literal (state := state_132229) 0
    state_132230 state_132319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132230
  · exact cover_132319
#print axioms cover_132229

def state_132205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_132205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132205 := by
  apply coveredState_split_literal (state := state_132205) 4
    state_132206 state_132229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132206
  · exact cover_132229
#print axioms cover_132205

def state_132179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_132179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132179 := by
  apply coveredState_split_literal (state := state_132179) 3
    state_132180 state_132205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132180
  · exact cover_132205
#print axioms cover_132179

def state_132177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_132177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132177 := by
  apply coveredState_split_literal (state := state_132177) 4
    state_132178 state_132179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132178
  · exact cover_132179
#print axioms cover_132177
end Mub6.Numerical.CircleFullPrototype.Forest
