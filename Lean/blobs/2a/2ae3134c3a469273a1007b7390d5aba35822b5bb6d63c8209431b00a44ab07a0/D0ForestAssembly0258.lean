import D0FullInterface
import D0ForestAssembly0256
import D0ForestAssembly0257
import D0ForestChunk0987
import D0ForestChunk0988
import D0ForestChunk0989
import D0ForestChunk0990
import D0ForestChunk0991
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1537513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1537513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537513 := by
  apply coveredState_split_literal (state := state_1537513) 1
    state_1537514 state_1537519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537514
  · exact cover_1537519
#print axioms cover_1537513

def state_1536101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1536101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536101 := by
  apply coveredState_split_literal (state := state_1536101) 0
    state_1536102 state_1537513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536102
  · exact cover_1537513
#print axioms cover_1536101

def state_1537641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1537641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537641 := by
  apply coveredState_split_literal (state := state_1537641) 0
    state_1537642 state_1537667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537642
  · exact cover_1537667
#print axioms cover_1537641

def state_1537640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 5)))
theorem cover_1537640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537640 := by
  apply coveredState_split_literal (state := state_1537640) 4
    state_1537641 state_1537714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537641
  · exact cover_1537714
#print axioms cover_1537640

def state_1537639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
theorem cover_1537639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537639 := by
  apply coveredState_split_literal (state := state_1537639) 3
    state_1537640 state_1537719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537640
  · exact cover_1537719
#print axioms cover_1537639

def state_1537599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1537599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537599 := by
  apply coveredState_split_literal (state := state_1537599) 2
    state_1537600 state_1537639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537600
  · exact cover_1537639
#print axioms cover_1537599

def state_1537585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1537585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537585 := by
  apply coveredState_split_literal (state := state_1537585) 1
    state_1537586 state_1537599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537586
  · exact cover_1537599
#print axioms cover_1537585

def state_1537584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1537584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537584 := by
  apply coveredState_split_literal (state := state_1537584) 0
    state_1537585 state_1537738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537585
  · exact cover_1537738
#print axioms cover_1537584

def state_1536100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1536100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536100 := by
  apply coveredState_split_literal (state := state_1536100) 4
    state_1536101 state_1537584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536101
  · exact cover_1537584
#print axioms cover_1536100

def state_1530904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1530904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530904 := by
  apply coveredState_split_literal (state := state_1530904) 3
    state_1530905 state_1536100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530905
  · exact cover_1536100
#print axioms cover_1530904

def state_1537799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1537799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537799 := by
  apply coveredState_split_literal (state := state_1537799) 4
    state_1537800 state_1537859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537800
  · exact cover_1537859
#print axioms cover_1537799

def state_1537765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1537765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537765 := by
  apply coveredState_split_literal (state := state_1537765) 3
    state_1537766 state_1537799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537766
  · exact cover_1537799
#print axioms cover_1537765

def state_1530903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1530903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530903 := by
  apply coveredState_split_literal (state := state_1530903) 2
    state_1530904 state_1537765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530904
  · exact cover_1537765
#print axioms cover_1530903

def state_1537987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 19)))
theorem cover_1537987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537987 := by
  apply coveredState_split_literal (state := state_1537987) 2
    state_1537988 state_1538027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537988
  · exact cover_1538027
#print axioms cover_1537987

def state_1537986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 19)))
theorem cover_1537986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537986 := by
  apply coveredState_split_literal (state := state_1537986) 0
    state_1537987 state_1538072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537987
  · exact cover_1538072
#print axioms cover_1537986

def state_1537976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 9)))
theorem cover_1537976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537976 := by
  apply coveredState_split_literal (state := state_1537976) 4
    state_1537977 state_1537986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537977
  · exact cover_1537986
#print axioms cover_1537976

def state_1537964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 9)))
theorem cover_1537964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537964 := by
  apply coveredState_split_literal (state := state_1537964) 3
    state_1537965 state_1537976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537965
  · exact cover_1537976
#print axioms cover_1537964

def state_1537963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 9)))
theorem cover_1537963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537963 := by
  apply coveredState_split_literal (state := state_1537963) 1
    state_1537964 state_1538097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537964
  · exact cover_1538097
#print axioms cover_1537963

def state_1537943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 9)))
theorem cover_1537943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537943 := by
  apply coveredState_split_literal (state := state_1537943) 2
    state_1537944 state_1537963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537944
  · exact cover_1537963
#print axioms cover_1537943

def state_1537942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 9)))
theorem cover_1537942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537942 := by
  apply coveredState_split_literal (state := state_1537942) 0
    state_1537943 state_1538106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537943
  · exact cover_1538106
#print axioms cover_1537942

def state_1537928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 4)))
theorem cover_1537928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537928 := by
  apply coveredState_split_literal (state := state_1537928) 4
    state_1537929 state_1537942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537929
  · exact cover_1537942
#print axioms cover_1537928

def state_1537916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
theorem cover_1537916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537916 := by
  apply coveredState_split_literal (state := state_1537916) 3
    state_1537917 state_1537928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537917
  · exact cover_1537928
#print axioms cover_1537916

def state_1537915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
theorem cover_1537915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537915 := by
  apply coveredState_split_literal (state := state_1537915) 1
    state_1537916 state_1538107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537916
  · exact cover_1538107
#print axioms cover_1537915

def state_1538139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_1538139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538139 := by
  apply coveredState_split_literal (state := state_1538139) 0
    state_1538140 state_1538191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538140
  · exact cover_1538191
#print axioms cover_1538139

def state_1538125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 4)))
theorem cover_1538125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538125 := by
  apply coveredState_split_literal (state := state_1538125) 4
    state_1538126 state_1538139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538126
  · exact cover_1538139
#print axioms cover_1538125

def state_1538119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_1538119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538119 := by
  apply coveredState_split_literal (state := state_1538119) 3
    state_1538120 state_1538125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538120
  · exact cover_1538125
#print axioms cover_1538119

def state_1538118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_1538118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538118 := by
  apply coveredState_split_literal (state := state_1538118) 1
    state_1538119 state_1538204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538119
  · exact cover_1538204
#print axioms cover_1538118

def state_1537914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1537914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537914 := by
  apply coveredState_split_literal (state := state_1537914) 2
    state_1537915 state_1538118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537915
  · exact cover_1538118
#print axioms cover_1537914

def state_1537913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1537913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537913 := by
  apply coveredState_split_literal (state := state_1537913) 0
    state_1537914 state_1538207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537914
  · exact cover_1538207
#print axioms cover_1537913

def state_1538324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 20)))
theorem cover_1538324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538324 := by
  apply coveredState_split_literal (state := state_1538324) 0
    state_1538325 state_1538356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538325
  · exact cover_1538356
#print axioms cover_1538324

def state_1538278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 20)))
theorem cover_1538278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538278 := by
  apply coveredState_split_literal (state := state_1538278) 3
    state_1538279 state_1538324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538279
  · exact cover_1538324
#print axioms cover_1538278

def state_1538277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 20)))
theorem cover_1538277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538277 := by
  apply coveredState_split_literal (state := state_1538277) 1
    state_1538278 state_1538393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538278
  · exact cover_1538393
#print axioms cover_1538277
end Mub6.Numerical.CircleFullD0.Forest
