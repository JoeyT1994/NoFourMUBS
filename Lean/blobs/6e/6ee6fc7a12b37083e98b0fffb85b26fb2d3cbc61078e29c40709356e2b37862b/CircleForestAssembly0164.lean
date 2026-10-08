import CircleFullInterface
import CircleForestAssembly0163
import CircleForestChunk0625
import CircleForestChunk0626
import CircleForestChunk0627
import CircleForestChunk0628
import CircleForestChunk0629
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1339194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 117 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 67 else 90)))
theorem cover_1339194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339194 := by
  apply coveredState_split_literal (state := state_1339194) 1
    state_1339195 state_1339246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339195
  · exact cover_1339246
#print axioms cover_1339194

def state_1339168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 117 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 90)))
theorem cover_1339168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339168 := by
  apply coveredState_split_literal (state := state_1339168) 3
    state_1339169 state_1339194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339169
  · exact cover_1339194
#print axioms cover_1339168

def state_1339142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 90)))
theorem cover_1339142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339142 := by
  apply coveredState_split_literal (state := state_1339142) 0
    state_1339143 state_1339168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339143
  · exact cover_1339168
#print axioms cover_1339142

def state_1339141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 90)))
theorem cover_1339141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339141 := by
  apply coveredState_split_literal (state := state_1339141) 2
    state_1339142 state_1339261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339142
  · exact cover_1339261
#print axioms cover_1339141

def state_1339140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 45)))
theorem cover_1339140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339140 := by
  apply coveredState_split_literal (state := state_1339140) 4
    state_1339141 state_1339284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339141
  · exact cover_1339284
#print axioms cover_1339140

def state_1338998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 45)))
theorem cover_1338998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338998 := by
  apply coveredState_split_literal (state := state_1338998) 1
    state_1338999 state_1339140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338999
  · exact cover_1339140
#print axioms cover_1338998

def state_1338958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
theorem cover_1338958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338958 := by
  apply coveredState_split_literal (state := state_1338958) 3
    state_1338959 state_1338998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338959
  · exact cover_1338998
#print axioms cover_1338958

def state_1338957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
theorem cover_1338957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338957 := by
  apply coveredState_split_literal (state := state_1338957) 0
    state_1338958 state_1339305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338958
  · exact cover_1339305
#print axioms cover_1338957

def state_1338185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 22)))
theorem cover_1338185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338185 := by
  apply coveredState_split_literal (state := state_1338185) 4
    state_1338186 state_1338957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338186
  · exact cover_1338957
#print axioms cover_1338185

def state_1338184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1338184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338184 := by
  apply coveredState_split_literal (state := state_1338184) 2
    state_1338185 state_1339334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338185
  · exact cover_1339334
#print axioms cover_1338184

def state_1338183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1338183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338183 := by
  apply coveredState_split_literal (state := state_1338183) 1
    state_1338184 state_1339365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338184
  · exact cover_1339365
#print axioms cover_1338183

def state_1339506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 34 else 90)))
theorem cover_1339506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339506 := by
  apply coveredState_split_literal (state := state_1339506) 0
    state_1339507 state_1339508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339507
  · exact cover_1339508
#print axioms cover_1339506

def state_1339505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 44 else (if j.val < 4 then 34 else 90)))
theorem cover_1339505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339505 := by
  apply coveredState_split_literal (state := state_1339505) 2
    state_1339506 state_1339571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339506
  · exact cover_1339571
#print axioms cover_1339505

def state_1339590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 44 else (if j.val < 4 then 34 else 91)))
theorem cover_1339590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339590 := by
  apply coveredState_split_literal (state := state_1339590) 2
    state_1339591 state_1339646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339591
  · exact cover_1339646
#print axioms cover_1339590

def state_1339504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 44 else (if j.val < 4 then 34 else 45)))
theorem cover_1339504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339504 := by
  apply coveredState_split_literal (state := state_1339504) 4
    state_1339505 state_1339590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339505
  · exact cover_1339590
#print axioms cover_1339504

def state_1339462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 34 else 45)))
theorem cover_1339462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339462 := by
  apply coveredState_split_literal (state := state_1339462) 1
    state_1339463 state_1339504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339463
  · exact cover_1339504
#print axioms cover_1339462

def state_1339461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 45)))
theorem cover_1339461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339461 := by
  apply coveredState_split_literal (state := state_1339461) 3
    state_1339462 state_1339659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339462
  · exact cover_1339659
#print axioms cover_1339461

def state_1339661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 34 else 45)))
theorem cover_1339661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339661 := by
  apply coveredState_split_literal (state := state_1339661) 1
    state_1339662 state_1339671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339662
  · exact cover_1339671
#print axioms cover_1339661

def state_1339660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 45)))
theorem cover_1339660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339660 := by
  apply coveredState_split_literal (state := state_1339660) 3
    state_1339661 state_1339732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339661
  · exact cover_1339732
#print axioms cover_1339660

def state_1339460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 45)))
theorem cover_1339460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339460 := by
  apply coveredState_split_literal (state := state_1339460) 0
    state_1339461 state_1339660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339461
  · exact cover_1339660
#print axioms cover_1339460

def state_1339424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 22)))
theorem cover_1339424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339424 := by
  apply coveredState_split_literal (state := state_1339424) 4
    state_1339425 state_1339460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339425
  · exact cover_1339460
#print axioms cover_1339424

def state_1339423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
theorem cover_1339423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339423 := by
  apply coveredState_split_literal (state := state_1339423) 2
    state_1339424 state_1339787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339424
  · exact cover_1339787
#print axioms cover_1339423

def state_1339869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 45)))
theorem cover_1339869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339869 := by
  apply coveredState_split_literal (state := state_1339869) 3
    state_1339870 state_1339917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339870
  · exact cover_1339917
#print axioms cover_1339869

def state_1339817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 45)))
theorem cover_1339817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339817 := by
  apply coveredState_split_literal (state := state_1339817) 0
    state_1339818 state_1339869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339818
  · exact cover_1339869
#print axioms cover_1339817

def state_1339803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 22)))
theorem cover_1339803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339803 := by
  apply coveredState_split_literal (state := state_1339803) 4
    state_1339804 state_1339817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339804
  · exact cover_1339817
#print axioms cover_1339803

def state_1339802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
theorem cover_1339802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339802 := by
  apply coveredState_split_literal (state := state_1339802) 2
    state_1339803 state_1339964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339803
  · exact cover_1339964
#print axioms cover_1339802

def state_1339422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
theorem cover_1339422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339422 := by
  apply coveredState_split_literal (state := state_1339422) 1
    state_1339423 state_1339802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1339423
  · exact cover_1339802
#print axioms cover_1339422

def state_1338182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1338182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338182 := by
  apply coveredState_split_literal (state := state_1338182) 3
    state_1338183 state_1339422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338183
  · exact cover_1339422
#print axioms cover_1338182

def state_1338010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1338010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338010 := by
  apply coveredState_split_literal (state := state_1338010) 0
    state_1338011 state_1338182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338011
  · exact cover_1338182
#print axioms cover_1338010

def state_1340046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 46)))
theorem cover_1340046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340046 := by
  apply coveredState_split_literal (state := state_1340046) 0
    state_1340047 state_1340066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340047
  · exact cover_1340066
#print axioms cover_1340046

def state_1340045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 46)))
theorem cover_1340045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340045 := by
  apply coveredState_split_literal (state := state_1340045) 2
    state_1340046 state_1340129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340046
  · exact cover_1340129
#print axioms cover_1340045

def state_1340044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 23)))
theorem cover_1340044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340044 := by
  apply coveredState_split_literal (state := state_1340044) 4
    state_1340045 state_1340142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340045
  · exact cover_1340142
#print axioms cover_1340044
end Mub6.Numerical.CircleFullD0.Forest
