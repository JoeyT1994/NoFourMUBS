import CircleFullInterface
import CircleForestAssembly0235
import CircleForestChunk0898
import CircleForestChunk0899
import CircleForestChunk0900
import CircleForestChunk0901
import CircleForestChunk0902
import CircleForestChunk0903
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1516196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 61)))
theorem cover_1516196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516196 := by
  apply coveredState_split_literal (state := state_1516196) 0
    state_1516197 state_1516242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516197
  · exact cover_1516242
#print axioms cover_1516196

def state_1516178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 30)))
theorem cover_1516178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516178 := by
  apply coveredState_split_literal (state := state_1516178) 4
    state_1516179 state_1516196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516179
  · exact cover_1516196
#print axioms cover_1516178

def state_1516177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 27 else 30)))
theorem cover_1516177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516177 := by
  apply coveredState_split_literal (state := state_1516177) 3
    state_1516178 state_1516265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516178
  · exact cover_1516265
#print axioms cover_1516177

def state_1515987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
theorem cover_1515987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515987 := by
  apply coveredState_split_literal (state := state_1515987) 2
    state_1515988 state_1516177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515988
  · exact cover_1516177
#print axioms cover_1515987

def state_1516350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 27 else 30)))
theorem cover_1516350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516350 := by
  apply coveredState_split_literal (state := state_1516350) 3
    state_1516351 state_1516404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516351
  · exact cover_1516404
#print axioms cover_1516350

def state_1516296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
theorem cover_1516296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516296 := by
  apply coveredState_split_literal (state := state_1516296) 2
    state_1516297 state_1516350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516297
  · exact cover_1516350
#print axioms cover_1516296

def state_1515986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
theorem cover_1515986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515986 := by
  apply coveredState_split_literal (state := state_1515986) 1
    state_1515987 state_1516296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515987
  · exact cover_1516296
#print axioms cover_1515986

def state_1515985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
theorem cover_1515985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515985 := by
  apply coveredState_split_literal (state := state_1515985) 0
    state_1515986 state_1516419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515986
  · exact cover_1516419
#print axioms cover_1515985

def state_1516524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 62)))
theorem cover_1516524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516524 := by
  apply coveredState_split_literal (state := state_1516524) 0
    state_1516525 state_1516566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516525
  · exact cover_1516566
#print axioms cover_1516524

def state_1516523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 31)))
theorem cover_1516523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516523 := by
  apply coveredState_split_literal (state := state_1516523) 4
    state_1516524 state_1516601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516524
  · exact cover_1516601
#print axioms cover_1516523

def state_1516522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 27 else 31)))
theorem cover_1516522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516522 := by
  apply coveredState_split_literal (state := state_1516522) 3
    state_1516523 state_1516608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516523
  · exact cover_1516608
#print axioms cover_1516522

def state_1516484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
theorem cover_1516484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516484 := by
  apply coveredState_split_literal (state := state_1516484) 2
    state_1516485 state_1516522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516485
  · exact cover_1516522
#print axioms cover_1516484

def state_1516640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 62)))
theorem cover_1516640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516640 := by
  apply coveredState_split_literal (state := state_1516640) 0
    state_1516641 state_1516688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516641
  · exact cover_1516688
#print axioms cover_1516640

def state_1516639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 31)))
theorem cover_1516639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516639 := by
  apply coveredState_split_literal (state := state_1516639) 4
    state_1516640 state_1516745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516640
  · exact cover_1516745
#print axioms cover_1516639

def state_1516638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 27 else 31)))
theorem cover_1516638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516638 := by
  apply coveredState_split_literal (state := state_1516638) 3
    state_1516639 state_1516780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516639
  · exact cover_1516780
#print axioms cover_1516638

def state_1516843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 86 else (if j.val < 4 then 54 else 62)))
theorem cover_1516843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516843 := by
  apply coveredState_split_literal (state := state_1516843) 3
    state_1516844 state_1516887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516844
  · exact cover_1516887
#print axioms cover_1516843

def state_1516842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 62)))
theorem cover_1516842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516842 := by
  apply coveredState_split_literal (state := state_1516842) 2
    state_1516843 state_1516924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516843
  · exact cover_1516924
#print axioms cover_1516842

def state_1516931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 91) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 62)))
theorem cover_1516931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516931 := by
  apply coveredState_split_literal (state := state_1516931) 2
    state_1516932 state_1516993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516932
  · exact cover_1516993
#print axioms cover_1516931

def state_1516841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 62)))
theorem cover_1516841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516841 := by
  apply coveredState_split_literal (state := state_1516841) 1
    state_1516842 state_1516931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516842
  · exact cover_1516931
#print axioms cover_1516841

def state_1516789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 62)))
theorem cover_1516789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516789 := by
  apply coveredState_split_literal (state := state_1516789) 0
    state_1516790 state_1516841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516790
  · exact cover_1516841
#print axioms cover_1516789

def state_1517012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 63)))
theorem cover_1517012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517012 := by
  apply coveredState_split_literal (state := state_1517012) 0
    state_1517013 state_1517032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517013
  · exact cover_1517032
#print axioms cover_1517012

def state_1516788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 31)))
theorem cover_1516788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516788 := by
  apply coveredState_split_literal (state := state_1516788) 4
    state_1516789 state_1517012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516789
  · exact cover_1517012
#print axioms cover_1516788

def state_1517092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 62)))
theorem cover_1517092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517092 := by
  apply coveredState_split_literal (state := state_1517092) 0
    state_1517093 state_1517104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517093
  · exact cover_1517104
#print axioms cover_1517092

def state_1517163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 63)))
theorem cover_1517163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517163 := by
  apply coveredState_split_literal (state := state_1517163) 0
    state_1517164 state_1517177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517164
  · exact cover_1517177
#print axioms cover_1517163

def state_1517091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 31)))
theorem cover_1517091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517091 := by
  apply coveredState_split_literal (state := state_1517091) 4
    state_1517092 state_1517163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517092
  · exact cover_1517163
#print axioms cover_1517091

def state_1516787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 27 else 31)))
theorem cover_1516787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516787 := by
  apply coveredState_split_literal (state := state_1516787) 3
    state_1516788 state_1517091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516788
  · exact cover_1517091
#print axioms cover_1516787

def state_1516637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
theorem cover_1516637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516637 := by
  apply coveredState_split_literal (state := state_1516637) 2
    state_1516638 state_1516787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516638
  · exact cover_1516787
#print axioms cover_1516637

def state_1516483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
theorem cover_1516483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516483 := by
  apply coveredState_split_literal (state := state_1516483) 1
    state_1516484 state_1516637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516484
  · exact cover_1516637
#print axioms cover_1516483

def state_1517262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 27 else 31)))
theorem cover_1517262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517262 := by
  apply coveredState_split_literal (state := state_1517262) 3
    state_1517263 state_1517326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517263
  · exact cover_1517326
#print axioms cover_1517262

def state_1517252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 45) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
theorem cover_1517252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517252 := by
  apply coveredState_split_literal (state := state_1517252) 2
    state_1517253 state_1517262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517253
  · exact cover_1517262
#print axioms cover_1517252

def state_1517238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
theorem cover_1517238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517238 := by
  apply coveredState_split_literal (state := state_1517238) 1
    state_1517239 state_1517252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517239
  · exact cover_1517252
#print axioms cover_1517238

def state_1516482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
theorem cover_1516482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516482 := by
  apply coveredState_split_literal (state := state_1516482) 0
    state_1516483 state_1517238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516483
  · exact cover_1517238
#print axioms cover_1516482
end Mub6.Numerical.CircleFullD0.Forest
