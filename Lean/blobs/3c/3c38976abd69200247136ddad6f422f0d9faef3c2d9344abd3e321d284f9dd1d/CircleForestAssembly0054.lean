import CircleFullInterface
import CircleForestAssembly0053
import CircleForestChunk0218
import CircleForestChunk0219
import CircleForestChunk0220
import CircleForestChunk0221
import CircleForestChunk0222
import CircleForestChunk0223
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_989976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 21)))
theorem cover_989976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989976 := by
  apply coveredState_split_literal (state := state_989976) 4
    state_989977 state_990000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989977
  · exact cover_990000
#print axioms cover_989976

def state_990094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 43)))
theorem cover_990094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990094 := by
  apply coveredState_split_literal (state := state_990094) 3
    state_990095 state_990146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990095
  · exact cover_990146
#print axioms cover_990094

def state_990093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 43)))
theorem cover_990093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990093 := by
  apply coveredState_split_literal (state := state_990093) 0
    state_990094 state_990195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990094
  · exact cover_990195
#print axioms cover_990093

def state_990237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 43)))
theorem cover_990237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990237 := by
  apply coveredState_split_literal (state := state_990237) 4
    state_990238 state_990283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990238
  · exact cover_990283
#print axioms cover_990237

def state_990209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 43)))
theorem cover_990209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990209 := by
  apply coveredState_split_literal (state := state_990209) 3
    state_990210 state_990237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990210
  · exact cover_990237
#print axioms cover_990209

def state_990208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 43)))
theorem cover_990208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990208 := by
  apply coveredState_split_literal (state := state_990208) 0
    state_990209 state_990344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990209
  · exact cover_990344
#print axioms cover_990208

def state_990092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 43)))
theorem cover_990092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990092 := by
  apply coveredState_split_literal (state := state_990092) 2
    state_990093 state_990208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990093
  · exact cover_990208
#print axioms cover_990092

def state_990091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 43)))
theorem cover_990091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990091 := by
  apply coveredState_split_literal (state := state_990091) 1
    state_990092 state_990353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990092
  · exact cover_990353
#print axioms cover_990091

def state_990041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
theorem cover_990041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990041 := by
  apply coveredState_split_literal (state := state_990041) 4
    state_990042 state_990091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990042
  · exact cover_990091
#print axioms cover_990041

def state_989975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_989975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989975 := by
  apply coveredState_split_literal (state := state_989975) 3
    state_989976 state_990041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989976
  · exact cover_990041
#print axioms cover_989975

def state_989974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_989974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989974 := by
  apply coveredState_split_literal (state := state_989974) 0
    state_989975 state_990390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989975
  · exact cover_990390
#print axioms cover_989974

def state_989924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 21)))
theorem cover_989924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989924 := by
  apply coveredState_split_literal (state := state_989924) 2
    state_989925 state_989974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989925
  · exact cover_989974
#print axioms cover_989924

def state_989910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_989910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989910 := by
  apply coveredState_split_literal (state := state_989910) 4
    state_989911 state_989924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989911
  · exact cover_989924
#print axioms cover_989910

def state_989566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_989566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989566 := by
  apply coveredState_split_literal (state := state_989566) 1
    state_989567 state_989910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989567
  · exact cover_989910
#print axioms cover_989566

def state_989462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
theorem cover_989462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989462 := by
  apply coveredState_split_literal (state := state_989462) 3
    state_989463 state_989566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989463
  · exact cover_989566
#print axioms cover_989462

def state_982032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
theorem cover_982032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982032 := by
  apply coveredState_split_literal (state := state_982032) 0
    state_982033 state_989462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982033
  · exact cover_989462
#print axioms cover_982032

def state_990419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 10)))
theorem cover_990419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990419 := by
  apply coveredState_split_literal (state := state_990419) 4
    state_990420 state_990435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990420
  · exact cover_990435
#print axioms cover_990419

def state_990418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 10)))
theorem cover_990418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990418 := by
  apply coveredState_split_literal (state := state_990418) 1
    state_990419 state_990494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990419
  · exact cover_990494
#print axioms cover_990418

def state_990408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 10)))
theorem cover_990408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990408 := by
  apply coveredState_split_literal (state := state_990408) 3
    state_990409 state_990418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990409
  · exact cover_990418
#print axioms cover_990408

def state_990604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 21)))
theorem cover_990604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990604 := by
  apply coveredState_split_literal (state := state_990604) 0
    state_990605 state_990668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990605
  · exact cover_990668
#print axioms cover_990604

def state_990603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 21)))
theorem cover_990603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990603 := by
  apply coveredState_split_literal (state := state_990603) 2
    state_990604 state_990673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990604
  · exact cover_990673
#print axioms cover_990603

def state_990595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 10)))
theorem cover_990595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990595 := by
  apply coveredState_split_literal (state := state_990595) 4
    state_990596 state_990603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990596
  · exact cover_990603
#print axioms cover_990595

def state_990563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 10)))
theorem cover_990563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990563 := by
  apply coveredState_split_literal (state := state_990563) 1
    state_990564 state_990595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990564
  · exact cover_990595
#print axioms cover_990563

def state_990555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 10)))
theorem cover_990555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990555 := by
  apply coveredState_split_literal (state := state_990555) 3
    state_990556 state_990563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990556
  · exact cover_990563
#print axioms cover_990555

def state_990407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 10)))
theorem cover_990407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990407 := by
  apply coveredState_split_literal (state := state_990407) 0
    state_990408 state_990555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990408
  · exact cover_990555
#print axioms cover_990407

def state_982031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
theorem cover_982031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982031 := by
  apply coveredState_split_literal (state := state_982031) 2
    state_982032 state_990407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982032
  · exact cover_990407
#print axioms cover_982031

def state_990764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 22)))
theorem cover_990764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990764 := by
  apply coveredState_split_literal (state := state_990764) 0
    state_990765 state_990780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990765
  · exact cover_990780
#print axioms cover_990764

def state_990863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 44)))
theorem cover_990863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990863 := by
  apply coveredState_split_literal (state := state_990863) 1
    state_990864 state_990919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990864
  · exact cover_990919
#print axioms cover_990863

def state_990862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 22)))
theorem cover_990862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990862 := by
  apply coveredState_split_literal (state := state_990862) 4
    state_990863 state_990954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990863
  · exact cover_990954
#print axioms cover_990862

def state_990984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 44)))
theorem cover_990984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990984 := by
  apply coveredState_split_literal (state := state_990984) 0
    state_990985 state_991016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990985
  · exact cover_991016
#print axioms cover_990984

def state_991121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 88)))
theorem cover_991121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991121 := by
  apply coveredState_split_literal (state := state_991121) 0
    state_991122 state_991139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991122
  · exact cover_991139
#print axioms cover_991121

def state_991120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 88)))
theorem cover_991120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991120 := by
  apply coveredState_split_literal (state := state_991120) 2
    state_991121 state_991196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991121
  · exact cover_991196
#print axioms cover_991120
end Mub6.Numerical.CircleFullD0.Forest
