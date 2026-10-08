import CircleFullInterface
import CircleForestAssembly0388
import CircleForestChunk1514
import CircleForestChunk1515
import CircleForestChunk1516
import CircleForestChunk1517
import CircleForestChunk1518
import CircleForestChunk1519
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1664253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 15)))
theorem cover_1664253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664253 := by
  apply coveredState_split_literal (state := state_1664253) 1
    state_1664254 state_1664265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664254
  · exact cover_1664265
#print axioms cover_1664253

def state_1664227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 15)))
theorem cover_1664227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664227 := by
  apply coveredState_split_literal (state := state_1664227) 0
    state_1664228 state_1664253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664228
  · exact cover_1664253
#print axioms cover_1664227

def state_1664219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 7)))
theorem cover_1664219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664219 := by
  apply coveredState_split_literal (state := state_1664219) 4
    state_1664220 state_1664227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664220
  · exact cover_1664227
#print axioms cover_1664219

def state_1664218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_1664218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664218 := by
  apply coveredState_split_literal (state := state_1664218) 2
    state_1664219 state_1664472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664219
  · exact cover_1664472
#print axioms cover_1664218

def state_1664489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 7)))
theorem cover_1664489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664489 := by
  apply coveredState_split_literal (state := state_1664489) 2
    state_1664490 state_1664545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664490
  · exact cover_1664545
#print axioms cover_1664489

def state_1664217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1664217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664217 := by
  apply coveredState_split_literal (state := state_1664217) 3
    state_1664218 state_1664489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664218
  · exact cover_1664489
#print axioms cover_1664217

def state_1664560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1664560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664560 := by
  apply coveredState_split_literal (state := state_1664560) 3
    state_1664561 state_1664612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664561
  · exact cover_1664612
#print axioms cover_1664560

def state_1664216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1664216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664216 := by
  apply coveredState_split_literal (state := state_1664216) 1
    state_1664217 state_1664560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664217
  · exact cover_1664560
#print axioms cover_1664216

def state_1664748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 15)))
theorem cover_1664748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664748 := by
  apply coveredState_split_literal (state := state_1664748) 0
    state_1664749 state_1664808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664749
  · exact cover_1664808
#print axioms cover_1664748

def state_1664744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 7)))
theorem cover_1664744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664744 := by
  apply coveredState_split_literal (state := state_1664744) 4
    state_1664745 state_1664748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664745
  · exact cover_1664748
#print axioms cover_1664744

def state_1664743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 7)))
theorem cover_1664743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664743 := by
  apply coveredState_split_literal (state := state_1664743) 2
    state_1664744 state_1664813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664744
  · exact cover_1664813
#print axioms cover_1664743

def state_1664703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1664703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664703 := by
  apply coveredState_split_literal (state := state_1664703) 3
    state_1664704 state_1664743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664704
  · exact cover_1664743
#print axioms cover_1664703

def state_1664641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1664641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664641 := by
  apply coveredState_split_literal (state := state_1664641) 1
    state_1664642 state_1664703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664642
  · exact cover_1664703
#print axioms cover_1664641

def state_1664215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1664215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664215 := by
  apply coveredState_split_literal (state := state_1664215) 0
    state_1664216 state_1664641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664216
  · exact cover_1664641
#print axioms cover_1664215

def state_1664195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1664195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664195 := by
  apply coveredState_split_literal (state := state_1664195) 4
    state_1664196 state_1664215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664196
  · exact cover_1664215
#print axioms cover_1664195

def state_1664194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1664194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664194 := by
  apply coveredState_split_literal (state := state_1664194) 3
    state_1664195 state_1664824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664195
  · exact cover_1664824
#print axioms cover_1664194

def state_1664835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1664835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664835 := by
  apply coveredState_split_literal (state := state_1664835) 3
    state_1664836 state_1664893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664836
  · exact cover_1664893
#print axioms cover_1664835

def state_1664193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1664193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664193 := by
  apply coveredState_split_literal (state := state_1664193) 2
    state_1664194 state_1664835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664194
  · exact cover_1664835
#print axioms cover_1664193

def state_1664971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1664971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664971 := by
  apply coveredState_split_literal (state := state_1664971) 0
    state_1664972 state_1665029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664972
  · exact cover_1665029
#print axioms cover_1664971

def state_1664949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1664949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664949 := by
  apply coveredState_split_literal (state := state_1664949) 4
    state_1664950 state_1664971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664950
  · exact cover_1664971
#print axioms cover_1664949

def state_1664948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1664948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664948 := by
  apply coveredState_split_literal (state := state_1664948) 3
    state_1664949 state_1665058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664949
  · exact cover_1665058
#print axioms cover_1664948

def state_1664902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1664902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664902 := by
  apply coveredState_split_literal (state := state_1664902) 2
    state_1664903 state_1664948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664903
  · exact cover_1664948
#print axioms cover_1664902

def state_1664192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1664192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664192 := by
  apply coveredState_split_literal (state := state_1664192) 1
    state_1664193 state_1664902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664193
  · exact cover_1664902
#print axioms cover_1664192

def state_1664191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1664191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664191 := by
  apply coveredState_split_literal (state := state_1664191) 0
    state_1664192 state_1665065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664192
  · exact cover_1665065
#print axioms cover_1664191

def state_1664059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1664059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664059 := by
  apply coveredState_split_literal (state := state_1664059) 4
    state_1664060 state_1664191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664060
  · exact cover_1664191
#print axioms cover_1664059

def state_1663785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1663785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663785 := by
  apply coveredState_split_literal (state := state_1663785) 3
    state_1663786 state_1664059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663786
  · exact cover_1664059
#print axioms cover_1663785

def state_1665119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1665119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665119 := by
  apply coveredState_split_literal (state := state_1665119) 1
    state_1665120 state_1665135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665120
  · exact cover_1665135
#print axioms cover_1665119

def state_1665118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1665118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665118 := by
  apply coveredState_split_literal (state := state_1665118) 0
    state_1665119 state_1665192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665119
  · exact cover_1665192
#print axioms cover_1665118

def state_1665230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1665230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665230 := by
  apply coveredState_split_literal (state := state_1665230) 3
    state_1665231 state_1665260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665231
  · exact cover_1665260
#print axioms cover_1665230

def state_1665229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1665229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665229 := by
  apply coveredState_split_literal (state := state_1665229) 2
    state_1665230 state_1665295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665230
  · exact cover_1665295
#print axioms cover_1665229

def state_1665461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 32 else 51)))
theorem cover_1665461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665461 := by
  apply coveredState_split_literal (state := state_1665461) 0
    state_1665462 state_1665483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665462
  · exact cover_1665483
#print axioms cover_1665461

def state_1665460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
theorem cover_1665460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665460 := by
  apply coveredState_split_literal (state := state_1665460) 3
    state_1665461 state_1665534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665461
  · exact cover_1665534
#print axioms cover_1665460
end Mub6.Numerical.CircleFullD0.Forest
