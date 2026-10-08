import D0FullInterface
import D0ForestAssembly0007
import D0ForestChunk0016
import D0ForestChunk0017
import D0ForestChunk0018
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1338010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1338010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338010 := by
  apply coveredState_split_literal (state := state_1338010) 0
    state_1338011 state_1338182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338011
  · exact cover_1338182
#print axioms cover_1338010

def state_1338009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 11)))
theorem cover_1338009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338009 := by
  apply coveredState_split_literal (state := state_1338009) 4
    state_1338010 state_1339981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338010
  · exact cover_1339981
#print axioms cover_1338009

def state_1338008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1338008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338008 := by
  apply coveredState_split_literal (state := state_1338008) 2
    state_1338009 state_1340340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338009
  · exact cover_1340340
#print axioms cover_1338008

def state_1338007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1338007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338007 := by
  apply coveredState_split_literal (state := state_1338007) 1
    state_1338008 state_1340383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338008
  · exact cover_1340383
#print axioms cover_1338007

def state_1338006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1338006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338006 := by
  apply coveredState_split_literal (state := state_1338006) 3
    state_1338007 state_1340432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338007
  · exact cover_1340432
#print axioms cover_1338006

def state_1340665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1340665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340665 := by
  apply coveredState_split_literal (state := state_1340665) 3
    state_1340666 state_1340829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340666
  · exact cover_1340829
#print axioms cover_1340665

def state_1338005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1338005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338005 := by
  apply coveredState_split_literal (state := state_1338005) 0
    state_1338006 state_1340665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338006
  · exact cover_1340665
#print axioms cover_1338005

def state_1337921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
theorem cover_1337921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337921 := by
  apply coveredState_split_literal (state := state_1337921) 4
    state_1337922 state_1338005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337922
  · exact cover_1338005
#print axioms cover_1337921

def state_1336985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1336985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336985 := by
  apply coveredState_split_literal (state := state_1336985) 2
    state_1336986 state_1337921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336986
  · exact cover_1337921
#print axioms cover_1336985

def state_1336984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1336984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336984 := by
  apply coveredState_split_literal (state := state_1336984) 1
    state_1336985 state_1341754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336985
  · exact cover_1341754
#print axioms cover_1336984

def state_1336976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_1336976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336976 := by
  apply coveredState_split_literal (state := state_1336976) 4
    state_1336977 state_1336984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336977
  · exact cover_1336984
#print axioms cover_1336976

def state_1336975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1336975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336975 := by
  apply coveredState_split_literal (state := state_1336975) 3
    state_1336976 state_1341845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336976
  · exact cover_1341845
#print axioms cover_1336975

def state_1336943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1336943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336943 := by
  apply coveredState_split_literal (state := state_1336943) 2
    state_1336944 state_1336975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336944
  · exact cover_1336975
#print axioms cover_1336943

def state_1336942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1336942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336942 := by
  apply coveredState_split_literal (state := state_1336942) 1
    state_1336943 state_1342158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336943
  · exact cover_1342158
#print axioms cover_1336942

def state_1336810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1336810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336810 := by
  apply coveredState_split_literal (state := state_1336810) 0
    state_1336811 state_1336942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336811
  · exact cover_1336942
#print axioms cover_1336810

def state_1342586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 12)))
theorem cover_1342586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342586 := by
  apply coveredState_split_literal (state := state_1342586) 3
    state_1342587 state_1342638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342587
  · exact cover_1342638
#print axioms cover_1342586

def state_1342524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 12)))
theorem cover_1342524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342524 := by
  apply coveredState_split_literal (state := state_1342524) 0
    state_1342525 state_1342586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342525
  · exact cover_1342586
#print axioms cover_1342524

def state_1342523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 6)))
theorem cover_1342523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342523 := by
  apply coveredState_split_literal (state := state_1342523) 4
    state_1342524 state_1343633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342524
  · exact cover_1343633
#print axioms cover_1342523

def state_1342393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_1342393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342393 := by
  apply coveredState_split_literal (state := state_1342393) 2
    state_1342394 state_1342523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342394
  · exact cover_1342523
#print axioms cover_1342393

def state_1342392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_1342392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342392 := by
  apply coveredState_split_literal (state := state_1342392) 1
    state_1342393 state_1343650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342393
  · exact cover_1343650
#print axioms cover_1342392

def state_1342391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_1342391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342391 := by
  apply coveredState_split_literal (state := state_1342391) 4
    state_1342392 state_1343749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342392
  · exact cover_1343749
#print axioms cover_1342391

def state_1342390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_1342390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342390 := by
  apply coveredState_split_literal (state := state_1342390) 3
    state_1342391 state_1343754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342391
  · exact cover_1343754
#print axioms cover_1342390

def state_1342366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1342366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342366 := by
  apply coveredState_split_literal (state := state_1342366) 2
    state_1342367 state_1342390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342367
  · exact cover_1342390
#print axioms cover_1342366

def state_1342365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1342365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342365 := by
  apply coveredState_split_literal (state := state_1342365) 1
    state_1342366 state_1344663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342366
  · exact cover_1344663
#print axioms cover_1342365

def state_1342229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1342229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342229 := by
  apply coveredState_split_literal (state := state_1342229) 0
    state_1342230 state_1342365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342230
  · exact cover_1342365
#print axioms cover_1342229

def state_1336809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1336809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336809 := by
  apply coveredState_split_literal (state := state_1336809) 4
    state_1336810 state_1342229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336810
  · exact cover_1342229
#print axioms cover_1336809

def state_1345026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1345026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345026 := by
  apply coveredState_split_literal (state := state_1345026) 0
    state_1345027 state_1345978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1345027
  · exact cover_1345978
#print axioms cover_1345026

def state_1344776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1344776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344776 := by
  apply coveredState_split_literal (state := state_1344776) 4
    state_1344777 state_1345026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344777
  · exact cover_1345026
#print axioms cover_1344776

def state_1336808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1336808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336808 := by
  apply coveredState_split_literal (state := state_1336808) 3
    state_1336809 state_1344776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336809
  · exact cover_1344776
#print axioms cover_1336808

def state_1336807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1336807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336807 := by
  apply coveredState_split_literal (state := state_1336807) 2
    state_1336808 state_1346149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336808
  · exact cover_1346149
#print axioms cover_1336807

def state_1325997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1325997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325997 := by
  apply coveredState_split_literal (state := state_1325997) 1
    state_1325998 state_1336807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325998
  · exact cover_1336807
#print axioms cover_1325997

def state_1301977 : State := rootState
theorem cover_1301977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301977 := by
  apply coveredState_split_literal (state := state_1301977) 0
    state_1301978 state_1325997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301978
  · exact cover_1325997
#print axioms cover_1301977

def state_1459336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1459336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459336 := by
  apply coveredState_split_literal (state := state_1459336) 1
    state_1459337 state_1459986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459337
  · exact cover_1459986
#print axioms cover_1459336

def state_1459324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1459324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459324 := by
  apply coveredState_split_literal (state := state_1459324) 0
    state_1459325 state_1459336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459325
  · exact cover_1459336
#print axioms cover_1459324

def state_1459138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_1459138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459138 := by
  apply coveredState_split_literal (state := state_1459138) 4
    state_1459139 state_1459324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459139
  · exact cover_1459324
#print axioms cover_1459138

def state_1459046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_1459046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459046 := by
  apply coveredState_split_literal (state := state_1459046) 3
    state_1459047 state_1459138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459047
  · exact cover_1459138
#print axioms cover_1459046

def state_1459045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1459045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459045 := by
  apply coveredState_split_literal (state := state_1459045) 2
    state_1459046 state_1460743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459046
  · exact cover_1460743
#print axioms cover_1459045

def state_1458831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1458831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458831 := by
  apply coveredState_split_literal (state := state_1458831) 1
    state_1458832 state_1459045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458832
  · exact cover_1459045
#print axioms cover_1458831

def state_1458803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1458803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458803 := by
  apply coveredState_split_literal (state := state_1458803) 0
    state_1458804 state_1458831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458804
  · exact cover_1458831
#print axioms cover_1458803

def state_1458687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1458687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458687 := by
  apply coveredState_split_literal (state := state_1458687) 4
    state_1458688 state_1458803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458688
  · exact cover_1458803
#print axioms cover_1458687

def state_1461789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1461789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461789 := by
  apply coveredState_split_literal (state := state_1461789) 2
    state_1461790 state_1462755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461790
  · exact cover_1462755
#print axioms cover_1461789

def state_1461788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1461788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461788 := by
  apply coveredState_split_literal (state := state_1461788) 1
    state_1461789 state_1462882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461789
  · exact cover_1462882
#print axioms cover_1461788

def state_1461752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1461752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461752 := by
  apply coveredState_split_literal (state := state_1461752) 0
    state_1461753 state_1461788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461753
  · exact cover_1461788
#print axioms cover_1461752

def state_1460774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1460774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460774 := by
  apply coveredState_split_literal (state := state_1460774) 4
    state_1460775 state_1461752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460775
  · exact cover_1461752
#print axioms cover_1460774

def state_1458686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1458686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458686 := by
  apply coveredState_split_literal (state := state_1458686) 3
    state_1458687 state_1460774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458687
  · exact cover_1460774
#print axioms cover_1458686

def state_1463470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1463470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463470 := by
  apply coveredState_split_literal (state := state_1463470) 4
    state_1463471 state_1464446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463471
  · exact cover_1464446
#print axioms cover_1463470

def state_1465132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1465132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465132 := by
  apply coveredState_split_literal (state := state_1465132) 0
    state_1465133 state_1465948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465133
  · exact cover_1465948
#print axioms cover_1465132

def state_1465088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_1465088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465088 := by
  apply coveredState_split_literal (state := state_1465088) 4
    state_1465089 state_1465132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465089
  · exact cover_1465132
#print axioms cover_1465088

def state_1465032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1465032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465032 := by
  apply coveredState_split_literal (state := state_1465032) 3
    state_1465033 state_1465088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465033
  · exact cover_1465088
#print axioms cover_1465032

def state_1464956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1464956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464956 := by
  apply coveredState_split_literal (state := state_1464956) 2
    state_1464957 state_1465032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464957
  · exact cover_1465032
#print axioms cover_1464956

def state_1464784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1464784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464784 := by
  apply coveredState_split_literal (state := state_1464784) 1
    state_1464785 state_1464956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464785
  · exact cover_1464956
#print axioms cover_1464784

def state_1464612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1464612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464612 := by
  apply coveredState_split_literal (state := state_1464612) 0
    state_1464613 state_1464784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464613
  · exact cover_1464784
#print axioms cover_1464612

def state_1464611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1464611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464611 := by
  apply coveredState_split_literal (state := state_1464611) 4
    state_1464612 state_1466471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464612
  · exact cover_1466471
#print axioms cover_1464611

def state_1463469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1463469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463469 := by
  apply coveredState_split_literal (state := state_1463469) 3
    state_1463470 state_1464611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463470
  · exact cover_1464611
#print axioms cover_1463469

def state_1458685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1458685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458685 := by
  apply coveredState_split_literal (state := state_1458685) 2
    state_1458686 state_1463469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458686
  · exact cover_1463469
#print axioms cover_1458685

def state_1467442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
theorem cover_1467442 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1467140 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1467126 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1467104 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1467103 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1467083 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1466615 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1466587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466587 := by
  apply coveredState_split_literal (state := state_1466587) 0
    state_1466588 state_1466615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466588
  · exact cover_1466615
#print axioms cover_1466587

def state_1466586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1466586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466586 := by
  apply coveredState_split_literal (state := state_1466586) 4
    state_1466587 state_1468568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466587
  · exact cover_1468568
#print axioms cover_1466586
end Mub6.Numerical.CircleFullD0.Forest
