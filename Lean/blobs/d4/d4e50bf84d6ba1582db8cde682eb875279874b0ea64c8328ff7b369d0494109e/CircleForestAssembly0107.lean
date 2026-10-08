import CircleFullInterface
import CircleForestAssembly0106
import CircleForestChunk0426
import CircleForestChunk0427
import CircleForestChunk0428
import CircleForestChunk0429
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_177068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_177068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177068 := by
  apply coveredState_split_literal (state := state_177068) 3
    state_177069 state_177134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177069
  · exact cover_177134
#print axioms cover_177068

def state_175658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_175658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175658 := by
  apply coveredState_split_literal (state := state_175658) 2
    state_175659 state_177068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175659
  · exact cover_177068
#print axioms cover_175658

def state_177776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_177776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177776 := by
  apply coveredState_split_literal (state := state_177776) 3
    state_177777 state_177812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177777
  · exact cover_177812
#print axioms cover_177776

def state_177855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_177855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177855 := by
  apply coveredState_split_literal (state := state_177855) 3
    state_177856 state_177889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177856
  · exact cover_177889
#print axioms cover_177855

def state_177775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_177775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177775 := by
  apply coveredState_split_literal (state := state_177775) 2
    state_177776 state_177855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177776
  · exact cover_177855
#print axioms cover_177775

def state_175657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_175657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175657 := by
  apply coveredState_split_literal (state := state_175657) 1
    state_175658 state_177775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175658
  · exact cover_177775
#print axioms cover_175657

def state_177990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 12)))
theorem cover_177990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177990 := by
  apply coveredState_split_literal (state := state_177990) 1
    state_177991 state_178010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177991
  · exact cover_178010
#print axioms cover_177990

def state_177960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 12)))
theorem cover_177960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177960 := by
  apply coveredState_split_literal (state := state_177960) 3
    state_177961 state_177990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177961
  · exact cover_177990
#print axioms cover_177960

def state_177954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_177954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177954 := by
  apply coveredState_split_literal (state := state_177954) 2
    state_177955 state_177960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177955
  · exact cover_177960
#print axioms cover_177954

def state_177953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_177953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177953 := by
  apply coveredState_split_literal (state := state_177953) 4
    state_177954 state_178059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177954
  · exact cover_178059
#print axioms cover_177953

def state_177952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_177952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177952 := by
  apply coveredState_split_literal (state := state_177952) 1
    state_177953 state_178064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177953
  · exact cover_178064
#print axioms cover_177952

def state_177951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_177951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177951 := by
  apply coveredState_split_literal (state := state_177951) 0
    state_177952 state_178125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177952
  · exact cover_178125
#print axioms cover_177951

def state_177950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_177950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177950 := by
  apply coveredState_split_literal (state := state_177950) 4
    state_177951 state_178138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177951
  · exact cover_178138
#print axioms cover_177950

def state_177942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_177942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177942 := by
  apply coveredState_split_literal (state := state_177942) 3
    state_177943 state_177950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177943
  · exact cover_177950
#print axioms cover_177942

def state_178194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 12)))
theorem cover_178194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178194 := by
  apply coveredState_split_literal (state := state_178194) 4
    state_178195 state_178252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178195
  · exact cover_178252
#print axioms cover_178194

def state_178184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 12)))
theorem cover_178184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178184 := by
  apply coveredState_split_literal (state := state_178184) 1
    state_178185 state_178194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178185
  · exact cover_178194
#print axioms cover_178184

def state_178166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
theorem cover_178166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178166 := by
  apply coveredState_split_literal (state := state_178166) 3
    state_178167 state_178184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178167
  · exact cover_178184
#print axioms cover_178166

def state_178165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 6)))
theorem cover_178165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178165 := by
  apply coveredState_split_literal (state := state_178165) 4
    state_178166 state_178269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178166
  · exact cover_178269
#print axioms cover_178165

def state_178164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_178164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178164 := by
  apply coveredState_split_literal (state := state_178164) 2
    state_178165 state_178272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178165
  · exact cover_178272
#print axioms cover_178164

def state_178163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_178163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178163 := by
  apply coveredState_split_literal (state := state_178163) 1
    state_178164 state_178285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178164
  · exact cover_178285
#print axioms cover_178163

def state_178162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_178162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178162 := by
  apply coveredState_split_literal (state := state_178162) 0
    state_178163 state_178346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178163
  · exact cover_178346
#print axioms cover_178162

def state_178161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_178161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178161 := by
  apply coveredState_split_literal (state := state_178161) 4
    state_178162 state_178373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178162
  · exact cover_178373
#print axioms cover_178161

def state_178143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_178143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178143 := by
  apply coveredState_split_literal (state := state_178143) 3
    state_178144 state_178161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178144
  · exact cover_178161
#print axioms cover_178143

def state_177941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_177941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177941 := by
  apply coveredState_split_literal (state := state_177941) 2
    state_177942 state_178143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177942
  · exact cover_178143
#print axioms cover_177941

def state_178414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_178414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178414 := by
  apply coveredState_split_literal (state := state_178414) 1
    state_178415 state_178446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178415
  · exact cover_178446
#print axioms cover_178414

def state_178413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_178413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178413 := by
  apply coveredState_split_literal (state := state_178413) 4
    state_178414 state_178479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178414
  · exact cover_178479
#print axioms cover_178413

def state_178412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_178412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178412 := by
  apply coveredState_split_literal (state := state_178412) 0
    state_178413 state_178486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178413
  · exact cover_178486
#print axioms cover_178412

def state_178411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_178411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178411 := by
  apply coveredState_split_literal (state := state_178411) 4
    state_178412 state_178497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178412
  · exact cover_178497
#print axioms cover_178411

def state_178407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_178407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178407 := by
  apply coveredState_split_literal (state := state_178407) 3
    state_178408 state_178411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178408
  · exact cover_178411
#print axioms cover_178407

def state_178498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_178498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178498 := by
  apply coveredState_split_literal (state := state_178498) 3
    state_178499 state_178518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178499
  · exact cover_178518
#print axioms cover_178498

def state_178406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_178406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178406 := by
  apply coveredState_split_literal (state := state_178406) 2
    state_178407 state_178498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178407
  · exact cover_178498
#print axioms cover_178406

def state_177940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_177940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177940 := by
  apply coveredState_split_literal (state := state_177940) 1
    state_177941 state_178406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177941
  · exact cover_178406
#print axioms cover_177940
end Mub6.Numerical.CircleFullPrototype.Forest
