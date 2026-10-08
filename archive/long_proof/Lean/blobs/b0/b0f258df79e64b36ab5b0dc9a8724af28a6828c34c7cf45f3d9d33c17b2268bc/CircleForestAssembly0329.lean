import CircleFullInterface
import CircleForestAssembly0328
import CircleForestChunk1270
import CircleForestChunk1275
import CircleForestChunk1276
import CircleForestChunk1277
import CircleForestChunk1278
import CircleForestChunk1279
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1605996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1605996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605996 := by
  apply coveredState_split_literal (state := state_1605996) 2
    state_1605997 state_1606542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605997
  · exact cover_1606542
#print axioms cover_1605996

def state_1605504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1605504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605504 := by
  apply coveredState_split_literal (state := state_1605504) 1
    state_1605505 state_1605996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605505
  · exact cover_1605996
#print axioms cover_1605504

def state_1605498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1605498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605498 := by
  apply coveredState_split_literal (state := state_1605498) 0
    state_1605499 state_1605504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605499
  · exact cover_1605504
#print axioms cover_1605498

def state_1606619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 50)))
theorem cover_1606619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606619 := by
  apply coveredState_split_literal (state := state_1606619) 3
    state_1606620 state_1606677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606620
  · exact cover_1606677
#print axioms cover_1606619

def state_1606709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 100)))
theorem cover_1606709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606709 := by
  apply coveredState_split_literal (state := state_1606709) 2
    state_1606710 state_1606765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606710
  · exact cover_1606765
#print axioms cover_1606709

def state_1606820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 83) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 100)))
theorem cover_1606820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606820 := by
  apply coveredState_split_literal (state := state_1606820) 3
    state_1606821 state_1606878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606821
  · exact cover_1606878
#print axioms cover_1606820

def state_1606792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 100)))
theorem cover_1606792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606792 := by
  apply coveredState_split_literal (state := state_1606792) 1
    state_1606793 state_1606820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606793
  · exact cover_1606820
#print axioms cover_1606792

def state_1606790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 100)))
theorem cover_1606790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606790 := by
  apply coveredState_split_literal (state := state_1606790) 2
    state_1606791 state_1606792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606791
  · exact cover_1606792
#print axioms cover_1606790

def state_1606708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 100)))
theorem cover_1606708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606708 := by
  apply coveredState_split_literal (state := state_1606708) 0
    state_1606709 state_1606790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606709
  · exact cover_1606790
#print axioms cover_1606708

def state_1606911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 101)))
theorem cover_1606911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606911 := by
  apply coveredState_split_literal (state := state_1606911) 0
    state_1606912 state_1606935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606912
  · exact cover_1606935
#print axioms cover_1606911

def state_1606707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 50)))
theorem cover_1606707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606707 := by
  apply coveredState_split_literal (state := state_1606707) 4
    state_1606708 state_1606911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606708
  · exact cover_1606911
#print axioms cover_1606707

def state_1606988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 100)))
theorem cover_1606988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606988 := by
  apply coveredState_split_literal (state := state_1606988) 1
    state_1606989 state_1607042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606989
  · exact cover_1607042
#print axioms cover_1606988

def state_1606987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 100)))
theorem cover_1606987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606987 := by
  apply coveredState_split_literal (state := state_1606987) 2
    state_1606988 state_1607069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606988
  · exact cover_1607069
#print axioms cover_1606987

def state_1606981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 100)))
theorem cover_1606981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606981 := by
  apply coveredState_split_literal (state := state_1606981) 0
    state_1606982 state_1606987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606982
  · exact cover_1606987
#print axioms cover_1606981

def state_1606980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 50)))
theorem cover_1606980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606980 := by
  apply coveredState_split_literal (state := state_1606980) 4
    state_1606981 state_1607082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606981
  · exact cover_1607082
#print axioms cover_1606980

def state_1606706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 50)))
theorem cover_1606706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606706 := by
  apply coveredState_split_literal (state := state_1606706) 3
    state_1606707 state_1606980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606707
  · exact cover_1606980
#print axioms cover_1606706

def state_1606618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 50)))
theorem cover_1606618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606618 := by
  apply coveredState_split_literal (state := state_1606618) 1
    state_1606619 state_1606706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606619
  · exact cover_1606706
#print axioms cover_1606618

def state_1606617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
theorem cover_1606617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606617 := by
  apply coveredState_split_literal (state := state_1606617) 2
    state_1606618 state_1607089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606618
  · exact cover_1607089
#print axioms cover_1606617

def state_1606601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
theorem cover_1606601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606601 := by
  apply coveredState_split_literal (state := state_1606601) 0
    state_1606602 state_1606617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606602
  · exact cover_1606617
#print axioms cover_1606601

def state_1606600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 25)))
theorem cover_1606600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606600 := by
  apply coveredState_split_literal (state := state_1606600) 4
    state_1606601 state_1607134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606601
  · exact cover_1607134
#print axioms cover_1606600

def state_1606599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
theorem cover_1606599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606599 := by
  apply coveredState_split_literal (state := state_1606599) 3
    state_1606600 state_1607173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606600
  · exact cover_1607173
#print axioms cover_1606599

def state_1606598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1606598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606598 := by
  apply coveredState_split_literal (state := state_1606598) 2
    state_1606599 state_1607182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606599
  · exact cover_1607182
#print axioms cover_1606598

def state_1607230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 120 else 100)))
theorem cover_1607230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607230 := by
  apply coveredState_split_literal (state := state_1607230) 4
    state_1607231 state_1607288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607231
  · exact cover_1607288
#print axioms cover_1607230

def state_1607229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 100)))
theorem cover_1607229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607229 := by
  apply coveredState_split_literal (state := state_1607229) 3
    state_1607230 state_1607315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607230
  · exact cover_1607315
#print axioms cover_1607229

def state_1607228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 100)))
theorem cover_1607228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607228 := by
  apply coveredState_split_literal (state := state_1607228) 1
    state_1607229 state_1607350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607229
  · exact cover_1607350
#print axioms cover_1607228

def state_1607226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 100)))
theorem cover_1607226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607226 := by
  apply coveredState_split_literal (state := state_1607226) 2
    state_1607227 state_1607228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607227
  · exact cover_1607228
#print axioms cover_1607226

def state_1607204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 100)))
theorem cover_1607204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607204 := by
  apply coveredState_split_literal (state := state_1607204) 0
    state_1607205 state_1607226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607205
  · exact cover_1607226
#print axioms cover_1607204

def state_1607203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 50)))
theorem cover_1607203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607203 := by
  apply coveredState_split_literal (state := state_1607203) 4
    state_1607204 state_1607351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607204
  · exact cover_1607351
#print axioms cover_1607203

def state_1607202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 50)))
theorem cover_1607202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607202 := by
  apply coveredState_split_literal (state := state_1607202) 3
    state_1607203 state_1607380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607203
  · exact cover_1607380
#print axioms cover_1607202

def state_1607417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 100)))
theorem cover_1607417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607417 := by
  apply coveredState_split_literal (state := state_1607417) 1
    state_1607418 state_1607479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607418
  · exact cover_1607479
#print axioms cover_1607417

def state_1607403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 100)))
theorem cover_1607403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607403 := by
  apply coveredState_split_literal (state := state_1607403) 0
    state_1607404 state_1607417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607404
  · exact cover_1607417
#print axioms cover_1607403

def state_1607402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 50)))
theorem cover_1607402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607402 := by
  apply coveredState_split_literal (state := state_1607402) 4
    state_1607403 state_1607526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607403
  · exact cover_1607526
#print axioms cover_1607402
end Mub6.Numerical.CircleFullD0.Forest
