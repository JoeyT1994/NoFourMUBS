import CircleFullInterface
import CircleForestAssembly0016
import CircleForestChunk0072
import CircleForestChunk0073
import CircleForestChunk0074
import CircleForestChunk0075
import CircleForestChunk0076
import CircleForestChunk0077
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_954961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
theorem cover_954961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954961 := by
  apply coveredState_split_literal (state := state_954961) 0
    state_954962 state_954983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954962
  · exact cover_954983
#print axioms cover_954961

def state_954960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 54)))
theorem cover_954960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954960 := by
  apply coveredState_split_literal (state := state_954960) 4
    state_954961 state_955048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954961
  · exact cover_955048
#print axioms cover_954960

def state_954959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 54)))
theorem cover_954959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954959 := by
  apply coveredState_split_literal (state := state_954959) 3
    state_954960 state_955083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954960
  · exact cover_955083
#print axioms cover_954959

def state_954933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_954933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954933 := by
  apply coveredState_split_literal (state := state_954933) 2
    state_954934 state_954959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954934
  · exact cover_954959
#print axioms cover_954933

def state_955170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 174) else (if j.val < 3 then 211 else (if j.val < 4 then 72 else 109)))
theorem cover_955170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955170 := by
  apply coveredState_split_literal (state := state_955170) 3
    state_955171 state_955214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955171
  · exact cover_955214
#print axioms cover_955170

def state_955168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 174) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
theorem cover_955168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955168 := by
  apply coveredState_split_literal (state := state_955168) 2
    state_955169 state_955170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955169
  · exact cover_955170
#print axioms cover_955168

def state_955281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 175) else (if j.val < 3 then 211 else (if j.val < 4 then 145 else 109)))
theorem cover_955281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955281 := by
  apply coveredState_split_literal (state := state_955281) 4
    state_955282 state_955313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955282
  · exact cover_955313
#print axioms cover_955281

def state_955251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 175) else (if j.val < 3 then 211 else (if j.val < 4 then 72 else 109)))
theorem cover_955251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955251 := by
  apply coveredState_split_literal (state := state_955251) 3
    state_955252 state_955281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955252
  · exact cover_955281
#print axioms cover_955251

def state_955249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 175) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
theorem cover_955249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955249 := by
  apply coveredState_split_literal (state := state_955249) 2
    state_955250 state_955251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955250
  · exact cover_955251
#print axioms cover_955249

def state_955167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
theorem cover_955167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955167 := by
  apply coveredState_split_literal (state := state_955167) 1
    state_955168 state_955249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955168
  · exact cover_955249
#print axioms cover_955167

def state_955131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
theorem cover_955131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955131 := by
  apply coveredState_split_literal (state := state_955131) 0
    state_955132 state_955167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955132
  · exact cover_955167
#print axioms cover_955131

def state_955097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 54)))
theorem cover_955097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955097 := by
  apply coveredState_split_literal (state := state_955097) 4
    state_955098 state_955131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955098
  · exact cover_955131
#print axioms cover_955097

def state_955096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 54)))
theorem cover_955096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955096 := by
  apply coveredState_split_literal (state := state_955096) 3
    state_955097 state_955350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955097
  · exact cover_955350
#print axioms cover_955096

def state_955094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_955094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955094 := by
  apply coveredState_split_literal (state := state_955094) 2
    state_955095 state_955096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955095
  · exact cover_955096
#print axioms cover_955094

def state_954932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_954932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954932 := by
  apply coveredState_split_literal (state := state_954932) 1
    state_954933 state_955094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954933
  · exact cover_955094
#print axioms cover_954932

def state_954886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_954886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954886 := by
  apply coveredState_split_literal (state := state_954886) 0
    state_954887 state_954932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954887
  · exact cover_954932
#print axioms cover_954886

def state_954885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 27)))
theorem cover_954885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954885 := by
  apply coveredState_split_literal (state := state_954885) 4
    state_954886 state_955389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954886
  · exact cover_955389
#print axioms cover_954885

def state_954884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 27)))
theorem cover_954884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954884 := by
  apply coveredState_split_literal (state := state_954884) 3
    state_954885 state_955438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954885
  · exact cover_955438
#print axioms cover_954884

def state_955506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 54)))
theorem cover_955506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955506 := by
  apply coveredState_split_literal (state := state_955506) 4
    state_955507 state_955566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955507
  · exact cover_955566
#print axioms cover_955506

def state_955505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 54)))
theorem cover_955505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955505 := by
  apply coveredState_split_literal (state := state_955505) 3
    state_955506 state_955605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955506
  · exact cover_955605
#print axioms cover_955505

def state_955504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_955504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955504 := by
  apply coveredState_split_literal (state := state_955504) 2
    state_955505 state_955654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955505
  · exact cover_955654
#print axioms cover_955504

def state_955735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 109)))
theorem cover_955735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955735 := by
  apply coveredState_split_literal (state := state_955735) 1
    state_955736 state_955797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955736
  · exact cover_955797
#print axioms cover_955735

def state_955723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 109)))
theorem cover_955723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955723 := by
  apply coveredState_split_literal (state := state_955723) 0
    state_955724 state_955735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955724
  · exact cover_955735
#print axioms cover_955723

def state_955703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 54)))
theorem cover_955703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955703 := by
  apply coveredState_split_literal (state := state_955703) 4
    state_955704 state_955723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955704
  · exact cover_955723
#print axioms cover_955703

def state_955858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
theorem cover_955858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955858 := by
  apply coveredState_split_literal (state := state_955858) 1
    state_955859 state_955898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955859
  · exact cover_955898
#print axioms cover_955858

def state_955840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
theorem cover_955840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955840 := by
  apply coveredState_split_literal (state := state_955840) 0
    state_955841 state_955858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955841
  · exact cover_955858
#print axioms cover_955840

def state_955828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 54)))
theorem cover_955828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955828 := by
  apply coveredState_split_literal (state := state_955828) 4
    state_955829 state_955840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955829
  · exact cover_955840
#print axioms cover_955828

def state_955702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 54)))
theorem cover_955702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955702 := by
  apply coveredState_split_literal (state := state_955702) 3
    state_955703 state_955828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955703
  · exact cover_955828
#print axioms cover_955702

def state_955701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_955701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955701 := by
  apply coveredState_split_literal (state := state_955701) 2
    state_955702 state_955947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955702
  · exact cover_955947
#print axioms cover_955701

def state_955503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_955503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955503 := by
  apply coveredState_split_literal (state := state_955503) 1
    state_955504 state_955701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955504
  · exact cover_955701
#print axioms cover_955503

def state_955453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_955453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955453 := by
  apply coveredState_split_literal (state := state_955453) 0
    state_955454 state_955503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955454
  · exact cover_955503
#print axioms cover_955453

def state_955452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 27)))
theorem cover_955452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955452 := by
  apply coveredState_split_literal (state := state_955452) 4
    state_955453 state_955990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955453
  · exact cover_955990
#print axioms cover_955452
end Mub6.Numerical.CircleFullD0.Forest
