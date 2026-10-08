import CircleFullInterface
import CircleForestAssembly0179
import CircleForestAssembly0181
import CircleForestAssembly0182
import CircleForestChunk0684
import CircleForestChunk0688
import CircleForestChunk0689
import CircleForestChunk0690
import CircleForestChunk0691
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1466101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_1466101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466101 := by
  apply coveredState_split_literal (state := state_1466101) 2
    state_1466102 state_1466103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466102
  · exact cover_1466103
#print axioms cover_1466101

def state_1466306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 63 else 44)))
theorem cover_1466306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466306 := by
  apply coveredState_split_literal (state := state_1466306) 0
    state_1466307 state_1466370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466307
  · exact cover_1466370
#print axioms cover_1466306

def state_1466288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 31 else 44)))
theorem cover_1466288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466288 := by
  apply coveredState_split_literal (state := state_1466288) 3
    state_1466289 state_1466306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466289
  · exact cover_1466306
#print axioms cover_1466288

def state_1466264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 44)))
theorem cover_1466264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466264 := by
  apply coveredState_split_literal (state := state_1466264) 2
    state_1466265 state_1466288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466265
  · exact cover_1466288
#print axioms cover_1466264

def state_1466263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 22)))
theorem cover_1466263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466263 := by
  apply coveredState_split_literal (state := state_1466263) 4
    state_1466264 state_1466389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466264
  · exact cover_1466389
#print axioms cover_1466263

def state_1466262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 22)))
theorem cover_1466262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466262 := by
  apply coveredState_split_literal (state := state_1466262) 1
    state_1466263 state_1466398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466263
  · exact cover_1466398
#print axioms cover_1466262

def state_1466261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 22)))
theorem cover_1466261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466261 := by
  apply coveredState_split_literal (state := state_1466261) 0
    state_1466262 state_1466409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466262
  · exact cover_1466409
#print axioms cover_1466261

def state_1466243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 15 else 22)))
theorem cover_1466243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466243 := by
  apply coveredState_split_literal (state := state_1466243) 3
    state_1466244 state_1466261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466244
  · exact cover_1466261
#print axioms cover_1466243

def state_1466221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 22)))
theorem cover_1466221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466221 := by
  apply coveredState_split_literal (state := state_1466221) 2
    state_1466222 state_1466243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466222
  · exact cover_1466243
#print axioms cover_1466221

def state_1466220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
theorem cover_1466220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466220 := by
  apply coveredState_split_literal (state := state_1466220) 4
    state_1466221 state_1466430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466221
  · exact cover_1466430
#print axioms cover_1466220

def state_1466219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
theorem cover_1466219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466219 := by
  apply coveredState_split_literal (state := state_1466219) 1
    state_1466220 state_1466439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466220
  · exact cover_1466439
#print axioms cover_1466219

def state_1466218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
theorem cover_1466218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466218 := by
  apply coveredState_split_literal (state := state_1466218) 0
    state_1466219 state_1466450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466219
  · exact cover_1466450
#print axioms cover_1466218

def state_1466202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
theorem cover_1466202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466202 := by
  apply coveredState_split_literal (state := state_1466202) 3
    state_1466203 state_1466218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466203
  · exact cover_1466218
#print axioms cover_1466202

def state_1466180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_1466180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466180 := by
  apply coveredState_split_literal (state := state_1466180) 2
    state_1466181 state_1466202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466181
  · exact cover_1466202
#print axioms cover_1466180

def state_1466100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1466100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466100 := by
  apply coveredState_split_literal (state := state_1466100) 4
    state_1466101 state_1466180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466101
  · exact cover_1466180
#print axioms cover_1466100

def state_1465948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1465948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465948 := by
  apply coveredState_split_literal (state := state_1465948) 1
    state_1465949 state_1466100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465949
  · exact cover_1466100
#print axioms cover_1465948

def state_1465132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1465132 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1465088 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1465032 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1464956 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1464784 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1464612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464612 := by
  apply coveredState_split_literal (state := state_1464612) 0
    state_1464613 state_1464784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464613
  · exact cover_1464784
#print axioms cover_1464612

def state_1466513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1466513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466513 := by
  apply coveredState_split_literal (state := state_1466513) 2
    state_1466514 state_1466547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466514
  · exact cover_1466547
#print axioms cover_1466513

def state_1466499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1466499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466499 := by
  apply coveredState_split_literal (state := state_1466499) 1
    state_1466500 state_1466513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466500
  · exact cover_1466513
#print axioms cover_1466499

def state_1466471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1466471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466471 := by
  apply coveredState_split_literal (state := state_1466471) 0
    state_1466472 state_1466499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466472
  · exact cover_1466499
#print axioms cover_1466471

def state_1464611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1464611 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1463469 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1458685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458685 := by
  apply coveredState_split_literal (state := state_1458685) 2
    state_1458686 state_1463469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458686
  · exact cover_1463469
#print axioms cover_1458685

def state_1466638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_1466638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466638 := by
  apply coveredState_split_literal (state := state_1466638) 1
    state_1466639 state_1466654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466639
  · exact cover_1466654
#print axioms cover_1466638

def state_1466630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_1466630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466630 := by
  apply coveredState_split_literal (state := state_1466630) 0
    state_1466631 state_1466638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466631
  · exact cover_1466638
#print axioms cover_1466630

def state_1466618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
theorem cover_1466618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466618 := by
  apply coveredState_split_literal (state := state_1466618) 4
    state_1466619 state_1466630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466619
  · exact cover_1466630
#print axioms cover_1466618

def state_1466617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_1466617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466617 := by
  apply coveredState_split_literal (state := state_1466617) 3
    state_1466618 state_1466705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466618
  · exact cover_1466705
#print axioms cover_1466617
end Mub6.Numerical.CircleFullD0.Forest
