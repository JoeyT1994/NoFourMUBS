import CircleFullInterface
import CircleForestAssembly0514
import CircleForestChunk2025
import CircleForestChunk2026
import CircleForestChunk2027
import CircleForestChunk2028
import CircleForestChunk2029
import CircleForestChunk2030
import CircleForestChunk2031
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2566719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
theorem cover_2566719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566719 := by
  apply coveredState_split_literal (state := state_2566719) 1
    state_2566720 state_2566797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566720
  · exact cover_2566797
#print axioms cover_2566719

def state_2566669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 47)))
theorem cover_2566669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566669 := by
  apply coveredState_split_literal (state := state_2566669) 3
    state_2566670 state_2566719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566670
  · exact cover_2566719
#print axioms cover_2566669

def state_2566659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_2566659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566659 := by
  apply coveredState_split_literal (state := state_2566659) 2
    state_2566660 state_2566669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566660
  · exact cover_2566669
#print axioms cover_2566659

def state_2566658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_2566658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566658 := by
  apply coveredState_split_literal (state := state_2566658) 0
    state_2566659 state_2566828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566659
  · exact cover_2566828
#print axioms cover_2566658

def state_2566612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_2566612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566612 := by
  apply coveredState_split_literal (state := state_2566612) 4
    state_2566613 state_2566658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566613
  · exact cover_2566658
#print axioms cover_2566612

def state_2566611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_2566611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566611 := by
  apply coveredState_split_literal (state := state_2566611) 1
    state_2566612 state_2566837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566612
  · exact cover_2566837
#print axioms cover_2566611

def state_2566862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
theorem cover_2566862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566862 := by
  apply coveredState_split_literal (state := state_2566862) 1
    state_2566863 state_2566924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566863
  · exact cover_2566924
#print axioms cover_2566862

def state_2566610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 23)))
theorem cover_2566610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566610 := by
  apply coveredState_split_literal (state := state_2566610) 3
    state_2566611 state_2566862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566611
  · exact cover_2566862
#print axioms cover_2566610

def state_2566944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 46)))
theorem cover_2566944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566944 := by
  apply coveredState_split_literal (state := state_2566944) 2
    state_2566945 state_2566990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566945
  · exact cover_2566990
#print axioms cover_2566944

def state_2566943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_2566943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566943 := by
  apply coveredState_split_literal (state := state_2566943) 3
    state_2566944 state_2567047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566944
  · exact cover_2567047
#print axioms cover_2566943

def state_2566942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_2566942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566942 := by
  apply coveredState_split_literal (state := state_2566942) 0
    state_2566943 state_2567100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566943
  · exact cover_2567100
#print axioms cover_2566942

def state_2567167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 94)))
theorem cover_2567167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567167 := by
  apply coveredState_split_literal (state := state_2567167) 0
    state_2567168 state_2567225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567168
  · exact cover_2567225
#print axioms cover_2567167

def state_2567166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 47)))
theorem cover_2567166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567166 := by
  apply coveredState_split_literal (state := state_2567166) 4
    state_2567167 state_2567232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567167
  · exact cover_2567232
#print axioms cover_2567166

def state_2567106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 47)))
theorem cover_2567106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567106 := by
  apply coveredState_split_literal (state := state_2567106) 1
    state_2567107 state_2567166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567107
  · exact cover_2567166
#print axioms cover_2567106

def state_2567296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 118 else (if j.val < 4 then 113 else 94)))
theorem cover_2567296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567296 := by
  apply coveredState_split_literal (state := state_2567296) 1
    state_2567297 state_2567336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567297
  · exact cover_2567336
#print axioms cover_2567296

def state_2567295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 113 else 94)))
theorem cover_2567295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567295 := by
  apply coveredState_split_literal (state := state_2567295) 2
    state_2567296 state_2567365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567296
  · exact cover_2567365
#print axioms cover_2567295

def state_2567293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
theorem cover_2567293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567293 := by
  apply coveredState_split_literal (state := state_2567293) 3
    state_2567294 state_2567295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567294
  · exact cover_2567295
#print axioms cover_2567293

def state_2567292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
theorem cover_2567292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567292 := by
  apply coveredState_split_literal (state := state_2567292) 0
    state_2567293 state_2567388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567293
  · exact cover_2567388
#print axioms cover_2567292

def state_2567291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 47)))
theorem cover_2567291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567291 := by
  apply coveredState_split_literal (state := state_2567291) 4
    state_2567292 state_2567405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567292
  · exact cover_2567405
#print axioms cover_2567291

def state_2567261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 47)))
theorem cover_2567261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567261 := by
  apply coveredState_split_literal (state := state_2567261) 1
    state_2567262 state_2567291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567262
  · exact cover_2567291
#print axioms cover_2567261

def state_2567105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 47)))
theorem cover_2567105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567105 := by
  apply coveredState_split_literal (state := state_2567105) 2
    state_2567106 state_2567261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567106
  · exact cover_2567261
#print axioms cover_2567105

def state_2567450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 116 else (if j.val < 4 then 114 else 94)))
theorem cover_2567450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567450 := by
  apply coveredState_split_literal (state := state_2567450) 1
    state_2567451 state_2567490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567451
  · exact cover_2567490
#print axioms cover_2567450

def state_2567529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 193) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 94)))
theorem cover_2567529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567529 := by
  apply coveredState_split_literal (state := state_2567529) 4
    state_2567530 state_2567537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567530
  · exact cover_2567537
#print axioms cover_2567529

def state_2567515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 94)))
theorem cover_2567515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567515 := by
  apply coveredState_split_literal (state := state_2567515) 1
    state_2567516 state_2567529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567516
  · exact cover_2567529
#print axioms cover_2567515

def state_2567449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 114 else 94)))
theorem cover_2567449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567449 := by
  apply coveredState_split_literal (state := state_2567449) 2
    state_2567450 state_2567515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567450
  · exact cover_2567515
#print axioms cover_2567449

def state_2567448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
theorem cover_2567448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567448 := by
  apply coveredState_split_literal (state := state_2567448) 3
    state_2567449 state_2567596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567449
  · exact cover_2567596
#print axioms cover_2567448

def state_2567447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
theorem cover_2567447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567447 := by
  apply coveredState_split_literal (state := state_2567447) 0
    state_2567448 state_2567633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567448
  · exact cover_2567633
#print axioms cover_2567447

def state_2567641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
theorem cover_2567641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567641 := by
  apply coveredState_split_literal (state := state_2567641) 3
    state_2567642 state_2567703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567642
  · exact cover_2567703
#print axioms cover_2567641

def state_2567750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
theorem cover_2567750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567750 := by
  apply coveredState_split_literal (state := state_2567750) 3
    state_2567751 state_2567786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567751
  · exact cover_2567786
#print axioms cover_2567750

def state_2567640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
theorem cover_2567640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567640 := by
  apply coveredState_split_literal (state := state_2567640) 0
    state_2567641 state_2567750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567641
  · exact cover_2567750
#print axioms cover_2567640

def state_2567446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
theorem cover_2567446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567446 := by
  apply coveredState_split_literal (state := state_2567446) 4
    state_2567447 state_2567640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567447
  · exact cover_2567640
#print axioms cover_2567446

def state_2567927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 194) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 190)))
theorem cover_2567927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567927 := by
  apply coveredState_split_literal (state := state_2567927) 0
    state_2567928 state_2567991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2567928
  · exact cover_2567991
#print axioms cover_2567927
end Mub6.Numerical.CircleFullD0.Forest
