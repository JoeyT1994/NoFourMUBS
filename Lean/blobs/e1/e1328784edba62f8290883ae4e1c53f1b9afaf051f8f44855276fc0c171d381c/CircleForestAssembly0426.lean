import CircleFullInterface
import CircleForestAssembly0425
import CircleForestChunk1663
import CircleForestChunk1664
import CircleForestChunk1665
import CircleForestChunk1666
import CircleForestChunk1667
import CircleForestChunk1668
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2272475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
theorem cover_2272475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272475 := by
  apply coveredState_split_literal (state := state_2272475) 1
    state_2272476 state_2272505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272476
  · exact cover_2272505
#print axioms cover_2272475

def state_2272602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
theorem cover_2272602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272602 := by
  apply coveredState_split_literal (state := state_2272602) 1
    state_2272603 state_2272614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272603
  · exact cover_2272614
#print axioms cover_2272602

def state_2272474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
theorem cover_2272474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272474 := by
  apply coveredState_split_literal (state := state_2272474) 0
    state_2272475 state_2272602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272475
  · exact cover_2272602
#print axioms cover_2272474

def state_2272448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_2272448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272448 := by
  apply coveredState_split_literal (state := state_2272448) 4
    state_2272449 state_2272474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272449
  · exact cover_2272474
#print axioms cover_2272448

def state_2272792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2272792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272792 := by
  apply coveredState_split_literal (state := state_2272792) 1
    state_2272793 state_2272826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272793
  · exact cover_2272826
#print axioms cover_2272792

def state_2272791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2272791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272791 := by
  apply coveredState_split_literal (state := state_2272791) 0
    state_2272792 state_2272857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272792
  · exact cover_2272857
#print axioms cover_2272791

def state_2272790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2272790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272790 := by
  apply coveredState_split_literal (state := state_2272790) 3
    state_2272791 state_2272868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272791
  · exact cover_2272868
#print axioms cover_2272790

def state_2272736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 6)))
theorem cover_2272736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272736 := by
  apply coveredState_split_literal (state := state_2272736) 4
    state_2272737 state_2272790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272737
  · exact cover_2272790
#print axioms cover_2272736

def state_2272704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
theorem cover_2272704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272704 := by
  apply coveredState_split_literal (state := state_2272704) 3
    state_2272705 state_2272736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272705
  · exact cover_2272736
#print axioms cover_2272704

def state_2272958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2272958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272958 := by
  apply coveredState_split_literal (state := state_2272958) 4
    state_2272959 state_2272970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272959
  · exact cover_2272970
#print axioms cover_2272958

def state_2272950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2272950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272950 := by
  apply coveredState_split_literal (state := state_2272950) 1
    state_2272951 state_2272958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272951
  · exact cover_2272958
#print axioms cover_2272950

def state_2272949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2272949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272949 := by
  apply coveredState_split_literal (state := state_2272949) 0
    state_2272950 state_2273025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272950
  · exact cover_2273025
#print axioms cover_2272949

def state_2272948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 13)))
theorem cover_2272948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272948 := by
  apply coveredState_split_literal (state := state_2272948) 3
    state_2272949 state_2273034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272949
  · exact cover_2273034
#print axioms cover_2272948

def state_2272947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2272947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272947 := by
  apply coveredState_split_literal (state := state_2272947) 2
    state_2272948 state_2273057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272948
  · exact cover_2273057
#print axioms cover_2272947

def state_2272941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 6)))
theorem cover_2272941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272941 := by
  apply coveredState_split_literal (state := state_2272941) 4
    state_2272942 state_2272947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272942
  · exact cover_2272947
#print axioms cover_2272941

def state_2272917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
theorem cover_2272917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272917 := by
  apply coveredState_split_literal (state := state_2272917) 3
    state_2272918 state_2272941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272918
  · exact cover_2272941
#print axioms cover_2272917

def state_2272703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2272703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272703 := by
  apply coveredState_split_literal (state := state_2272703) 2
    state_2272704 state_2272917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272704
  · exact cover_2272917
#print axioms cover_2272703

def state_2272671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2272671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272671 := by
  apply coveredState_split_literal (state := state_2272671) 1
    state_2272672 state_2272703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272672
  · exact cover_2272703
#print axioms cover_2272671

def state_2272670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2272670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272670 := by
  apply coveredState_split_literal (state := state_2272670) 0
    state_2272671 state_2273070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272671
  · exact cover_2273070
#print axioms cover_2272670

def state_2273145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
theorem cover_2273145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273145 := by
  apply coveredState_split_literal (state := state_2273145) 3
    state_2273146 state_2273205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273146
  · exact cover_2273205
#print axioms cover_2273145

def state_2273404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 43 else 29)))
theorem cover_2273404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273404 := by
  apply coveredState_split_literal (state := state_2273404) 4
    state_2273405 state_2273438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273405
  · exact cover_2273438
#print axioms cover_2273404

def state_2273382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 21 else 29)))
theorem cover_2273382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273382 := by
  apply coveredState_split_literal (state := state_2273382) 3
    state_2273383 state_2273404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273383
  · exact cover_2273404
#print axioms cover_2273382

def state_2273360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 29)))
theorem cover_2273360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273360 := by
  apply coveredState_split_literal (state := state_2273360) 2
    state_2273361 state_2273382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273361
  · exact cover_2273382
#print axioms cover_2273360

def state_2273312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 14)))
theorem cover_2273312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273312 := by
  apply coveredState_split_literal (state := state_2273312) 4
    state_2273313 state_2273360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273313
  · exact cover_2273360
#print axioms cover_2273312

def state_2273286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
theorem cover_2273286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273286 := by
  apply coveredState_split_literal (state := state_2273286) 3
    state_2273287 state_2273312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273287
  · exact cover_2273312
#print axioms cover_2273286

def state_2273260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
theorem cover_2273260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273260 := by
  apply coveredState_split_literal (state := state_2273260) 1
    state_2273261 state_2273286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273261
  · exact cover_2273286
#print axioms cover_2273260

def state_2273471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
theorem cover_2273471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273471 := by
  apply coveredState_split_literal (state := state_2273471) 1
    state_2273472 state_2273479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273472
  · exact cover_2273479
#print axioms cover_2273471

def state_2273259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
theorem cover_2273259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273259 := by
  apply coveredState_split_literal (state := state_2273259) 0
    state_2273260 state_2273471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273260
  · exact cover_2273471
#print axioms cover_2273259

def state_2273557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 29)))
theorem cover_2273557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273557 := by
  apply coveredState_split_literal (state := state_2273557) 2
    state_2273558 state_2273621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273558
  · exact cover_2273621
#print axioms cover_2273557

def state_2273551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 14)))
theorem cover_2273551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273551 := by
  apply coveredState_split_literal (state := state_2273551) 4
    state_2273552 state_2273557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273552
  · exact cover_2273557
#print axioms cover_2273551

def state_2273541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
theorem cover_2273541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273541 := by
  apply coveredState_split_literal (state := state_2273541) 3
    state_2273542 state_2273551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273542
  · exact cover_2273551
#print axioms cover_2273541

def state_2273537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
theorem cover_2273537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273537 := by
  apply coveredState_split_literal (state := state_2273537) 1
    state_2273538 state_2273541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273538
  · exact cover_2273541
#print axioms cover_2273537
end Mub6.Numerical.CircleFullD0.Forest
