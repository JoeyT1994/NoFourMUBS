import CircleFullInterface
import CircleForestAssembly0390
import CircleForestChunk1522
import CircleForestChunk1523
import CircleForestChunk1524
import CircleForestChunk1525
import CircleForestChunk1526
import CircleForestChunk1527
import CircleForestChunk1528
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1666169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1666169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666169 := by
  apply coveredState_split_literal (state := state_1666169) 2
    state_1666170 state_1666195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666170
  · exact cover_1666195
#print axioms cover_1666169

def state_1666168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1666168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666168 := by
  apply coveredState_split_literal (state := state_1666168) 1
    state_1666169 state_1666306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666169
  · exact cover_1666306
#print axioms cover_1666168

def state_1666167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1666167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666167 := by
  apply coveredState_split_literal (state := state_1666167) 0
    state_1666168 state_1666349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666168
  · exact cover_1666349
#print axioms cover_1666167

def state_1666677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
theorem cover_1666677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666677 := by
  apply coveredState_split_literal (state := state_1666677) 4
    state_1666678 state_1666695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666678
  · exact cover_1666695
#print axioms cover_1666677

def state_1666793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 31)))
theorem cover_1666793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666793 := by
  apply coveredState_split_literal (state := state_1666793) 2
    state_1666794 state_1666827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666794
  · exact cover_1666827
#print axioms cover_1666793

def state_1666869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 50 else (if j.val < 4 then 25 else 31)))
theorem cover_1666869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666869 := by
  apply coveredState_split_literal (state := state_1666869) 3
    state_1666870 state_1666893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666870
  · exact cover_1666893
#print axioms cover_1666869

def state_1666979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 62) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 31)))
theorem cover_1666979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666979 := by
  apply coveredState_split_literal (state := state_1666979) 4
    state_1666980 state_1666999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666980
  · exact cover_1666999
#print axioms cover_1666979

def state_1667122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 63) else (if j.val < 3 then 102 else (if j.val < 4 then 51 else 63)))
theorem cover_1667122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667122 := by
  apply coveredState_split_literal (state := state_1667122) 3
    state_1667123 state_1667176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667123
  · exact cover_1667176
#print axioms cover_1667122

def state_1667121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 63)))
theorem cover_1667121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667121 := by
  apply coveredState_split_literal (state := state_1667121) 2
    state_1667122 state_1667195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667122
  · exact cover_1667195
#print axioms cover_1667121

def state_1667247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 102 else (if j.val < 4 then 51 else 63)))
theorem cover_1667247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667247 := by
  apply coveredState_split_literal (state := state_1667247) 3
    state_1667248 state_1667283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667248
  · exact cover_1667283
#print axioms cover_1667247

def state_1667320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 103 else (if j.val < 4 then 51 else 63)))
theorem cover_1667320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667320 := by
  apply coveredState_split_literal (state := state_1667320) 3
    state_1667321 state_1667358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667321
  · exact cover_1667358
#print axioms cover_1667320

def state_1667246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 63)))
theorem cover_1667246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667246 := by
  apply coveredState_split_literal (state := state_1667246) 2
    state_1667247 state_1667320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667247
  · exact cover_1667320
#print axioms cover_1667246

def state_1667120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 63)))
theorem cover_1667120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667120 := by
  apply coveredState_split_literal (state := state_1667120) 0
    state_1667121 state_1667246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667121
  · exact cover_1667246
#print axioms cover_1667120

def state_1667060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 31)))
theorem cover_1667060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667060 := by
  apply coveredState_split_literal (state := state_1667060) 4
    state_1667061 state_1667120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667061
  · exact cover_1667120
#print axioms cover_1667060

def state_1666978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 31)))
theorem cover_1666978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666978 := by
  apply coveredState_split_literal (state := state_1666978) 1
    state_1666979 state_1667060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666979
  · exact cover_1667060
#print axioms cover_1666978

def state_1666934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 25 else 31)))
theorem cover_1666934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666934 := by
  apply coveredState_split_literal (state := state_1666934) 3
    state_1666935 state_1666978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666935
  · exact cover_1666978
#print axioms cover_1666934

def state_1666868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 31)))
theorem cover_1666868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666868 := by
  apply coveredState_split_literal (state := state_1666868) 2
    state_1666869 state_1666934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666869
  · exact cover_1666934
#print axioms cover_1666868

def state_1666792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 31)))
theorem cover_1666792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666792 := by
  apply coveredState_split_literal (state := state_1666792) 0
    state_1666793 state_1666868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666793
  · exact cover_1666868
#print axioms cover_1666792

def state_1666742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
theorem cover_1666742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666742 := by
  apply coveredState_split_literal (state := state_1666742) 4
    state_1666743 state_1666792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666743
  · exact cover_1666792
#print axioms cover_1666742

def state_1666676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
theorem cover_1666676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666676 := by
  apply coveredState_split_literal (state := state_1666676) 1
    state_1666677 state_1666742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666677
  · exact cover_1666742
#print axioms cover_1666676

def state_1666646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 15)))
theorem cover_1666646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666646 := by
  apply coveredState_split_literal (state := state_1666646) 3
    state_1666647 state_1666676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666647
  · exact cover_1666676
#print axioms cover_1666646

def state_1666600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_1666600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666600 := by
  apply coveredState_split_literal (state := state_1666600) 2
    state_1666601 state_1666646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666601
  · exact cover_1666646
#print axioms cover_1666600

def state_1666550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_1666550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666550 := by
  apply coveredState_split_literal (state := state_1666550) 0
    state_1666551 state_1666600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666551
  · exact cover_1666600
#print axioms cover_1666550

def state_1666512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_1666512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666512 := by
  apply coveredState_split_literal (state := state_1666512) 4
    state_1666513 state_1666550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666513
  · exact cover_1666550
#print axioms cover_1666512

def state_1666470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_1666470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666470 := by
  apply coveredState_split_literal (state := state_1666470) 1
    state_1666471 state_1666512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666471
  · exact cover_1666512
#print axioms cover_1666470

def state_1667468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 31)))
theorem cover_1667468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667468 := by
  apply coveredState_split_literal (state := state_1667468) 0
    state_1667469 state_1667472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667469
  · exact cover_1667472
#print axioms cover_1667468

def state_1667462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 15)))
theorem cover_1667462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667462 := by
  apply coveredState_split_literal (state := state_1667462) 4
    state_1667463 state_1667468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667463
  · exact cover_1667468
#print axioms cover_1667462

def state_1667446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 15)))
theorem cover_1667446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667446 := by
  apply coveredState_split_literal (state := state_1667446) 1
    state_1667447 state_1667462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667447
  · exact cover_1667462
#print axioms cover_1667446

def state_1667445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 15)))
theorem cover_1667445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667445 := by
  apply coveredState_split_literal (state := state_1667445) 3
    state_1667446 state_1667533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667446
  · exact cover_1667533
#print axioms cover_1667445

def state_1667437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 15)))
theorem cover_1667437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667437 := by
  apply coveredState_split_literal (state := state_1667437) 2
    state_1667438 state_1667445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667438
  · exact cover_1667445
#print axioms cover_1667437

def state_1667433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 15)))
theorem cover_1667433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667433 := by
  apply coveredState_split_literal (state := state_1667433) 0
    state_1667434 state_1667437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667434
  · exact cover_1667437
#print axioms cover_1667433

def state_1667427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
theorem cover_1667427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667427 := by
  apply coveredState_split_literal (state := state_1667427) 4
    state_1667428 state_1667433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1667428
  · exact cover_1667433
#print axioms cover_1667427
end Mub6.Numerical.CircleFullD0.Forest
