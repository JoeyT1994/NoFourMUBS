import CircleFullInterface
import CircleForestAssembly0045
import CircleForestAssembly0046
import CircleForestChunk0183
import CircleForestChunk0184
import CircleForestChunk0185
import CircleForestChunk0186
import CircleForestChunk0187
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_64089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_64089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64089 := by
  apply coveredState_split_literal (state := state_64089) 4
    state_64090 state_64539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64090
  · exact cover_64539
#print axioms cover_64089

def state_65482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_65482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65482 := by
  apply coveredState_split_literal (state := state_65482) 2
    state_65483 state_65524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65483
  · exact cover_65524
#print axioms cover_65482

def state_65481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_65481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65481 := by
  apply coveredState_split_literal (state := state_65481) 1
    state_65482 state_65547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65482
  · exact cover_65547
#print axioms cover_65481

def state_65465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_65465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65465 := by
  apply coveredState_split_literal (state := state_65465) 0
    state_65466 state_65481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65466
  · exact cover_65481
#print axioms cover_65465

def state_65463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_65463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65463 := by
  apply coveredState_split_literal (state := state_65463) 4
    state_65464 state_65465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65464
  · exact cover_65465
#print axioms cover_65463

def state_65462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_65462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65462 := by
  apply coveredState_split_literal (state := state_65462) 3
    state_65463 state_65562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65463
  · exact cover_65562
#print axioms cover_65462

def state_65408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_65408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65408 := by
  apply coveredState_split_literal (state := state_65408) 2
    state_65409 state_65462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65409
  · exact cover_65462
#print axioms cover_65408

def state_65407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_65407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65407 := by
  apply coveredState_split_literal (state := state_65407) 1
    state_65408 state_65563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65408
  · exact cover_65563
#print axioms cover_65407

def state_65385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_65385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65385 := by
  apply coveredState_split_literal (state := state_65385) 0
    state_65386 state_65407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65386
  · exact cover_65407
#print axioms cover_65385

def state_65578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_65578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65578 := by
  apply coveredState_split_literal (state := state_65578) 2
    state_65579 state_65634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65579
  · exact cover_65634
#print axioms cover_65578

def state_65577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_65577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65577 := by
  apply coveredState_split_literal (state := state_65577) 1
    state_65578 state_65649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65578
  · exact cover_65649
#print axioms cover_65577

def state_65676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_65676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65676 := by
  apply coveredState_split_literal (state := state_65676) 1
    state_65677 state_65738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65677
  · exact cover_65738
#print axioms cover_65676

def state_65576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_65576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65576 := by
  apply coveredState_split_literal (state := state_65576) 0
    state_65577 state_65676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65577
  · exact cover_65676
#print axioms cover_65576

def state_65384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_65384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65384 := by
  apply coveredState_split_literal (state := state_65384) 4
    state_65385 state_65576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65385
  · exact cover_65576
#print axioms cover_65384

def state_64088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_64088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64088 := by
  apply coveredState_split_literal (state := state_64088) 3
    state_64089 state_65384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64089
  · exact cover_65384
#print axioms cover_64088

def state_65781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_65781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65781 := by
  apply coveredState_split_literal (state := state_65781) 0
    state_65782 state_65817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65782
  · exact cover_65817
#print axioms cover_65781

def state_65873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_65873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65873 := by
  apply coveredState_split_literal (state := state_65873) 1
    state_65874 state_65887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65874
  · exact cover_65887
#print axioms cover_65873

def state_65872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_65872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65872 := by
  apply coveredState_split_literal (state := state_65872) 0
    state_65873 state_65940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65873
  · exact cover_65940
#print axioms cover_65872

def state_65780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_65780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65780 := by
  apply coveredState_split_literal (state := state_65780) 4
    state_65781 state_65872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65781
  · exact cover_65872
#print axioms cover_65780

def state_65972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_65972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65972 := by
  apply coveredState_split_literal (state := state_65972) 3
    state_65973 state_66022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65973
  · exact cover_66022
#print axioms cover_65972

def state_65962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_65962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65962 := by
  apply coveredState_split_literal (state := state_65962) 2
    state_65963 state_65972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65963
  · exact cover_65972
#print axioms cover_65962

def state_65961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_65961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65961 := by
  apply coveredState_split_literal (state := state_65961) 1
    state_65962 state_66047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65962
  · exact cover_66047
#print axioms cover_65961

def state_66153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_66153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66153 := by
  apply coveredState_split_literal (state := state_66153) 3
    state_66154 state_66209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66154
  · exact cover_66209
#print axioms cover_66153

def state_66097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_66097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66097 := by
  apply coveredState_split_literal (state := state_66097) 2
    state_66098 state_66153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66098
  · exact cover_66153
#print axioms cover_66097

def state_66096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_66096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66096 := by
  apply coveredState_split_literal (state := state_66096) 1
    state_66097 state_66232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66097
  · exact cover_66232
#print axioms cover_66096

def state_65960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_65960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65960 := by
  apply coveredState_split_literal (state := state_65960) 0
    state_65961 state_66096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65961
  · exact cover_66096
#print axioms cover_65960

def state_66339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_66339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66339 := by
  apply coveredState_split_literal (state := state_66339) 1
    state_66340 state_66403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66340
  · exact cover_66403
#print axioms cover_66339

def state_66283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_66283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66283 := by
  apply coveredState_split_literal (state := state_66283) 0
    state_66284 state_66339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66284
  · exact cover_66339
#print axioms cover_66283

def state_65959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_65959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65959 := by
  apply coveredState_split_literal (state := state_65959) 4
    state_65960 state_66283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65960
  · exact cover_66283
#print axioms cover_65959

def state_65779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_65779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65779 := by
  apply coveredState_split_literal (state := state_65779) 3
    state_65780 state_65959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65780
  · exact cover_65959
#print axioms cover_65779

def state_64087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_64087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64087 := by
  apply coveredState_split_literal (state := state_64087) 2
    state_64088 state_65779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64088
  · exact cover_65779
#print axioms cover_64087

def state_45479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_45479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45479 := by
  apply coveredState_split_literal (state := state_45479) 1
    state_45480 state_64087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45480
  · exact cover_64087
#print axioms cover_45479
end Mub6.Numerical.CircleFullPrototype.Forest
