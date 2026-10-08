import CircleFullInterface
import CircleForestAssembly0152
import CircleForestChunk0581
import CircleForestChunk0582
import CircleForestChunk0585
import CircleForestChunk0586
import CircleForestChunk0587
import CircleForestChunk0588
import CircleForestChunk0589
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1328757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 23)))
theorem cover_1328757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328757 := by
  apply coveredState_split_literal (state := state_1328757) 1
    state_1328758 state_1329271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328758
  · exact cover_1329271
#print axioms cover_1328757

def state_1329371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 23)))
theorem cover_1329371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329371 := by
  apply coveredState_split_literal (state := state_1329371) 4
    state_1329372 state_1329393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329372
  · exact cover_1329393
#print axioms cover_1329371

def state_1329370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 23)))
theorem cover_1329370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329370 := by
  apply coveredState_split_literal (state := state_1329370) 1
    state_1329371 state_1329442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329371
  · exact cover_1329442
#print axioms cover_1329370

def state_1328756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 23)))
theorem cover_1328756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328756 := by
  apply coveredState_split_literal (state := state_1328756) 2
    state_1328757 state_1329370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328757
  · exact cover_1329370
#print axioms cover_1328756

def state_1328690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 11)))
theorem cover_1328690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328690 := by
  apply coveredState_split_literal (state := state_1328690) 4
    state_1328691 state_1328756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328691
  · exact cover_1328756
#print axioms cover_1328690

def state_1329513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 23)))
theorem cover_1329513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329513 := by
  apply coveredState_split_literal (state := state_1329513) 2
    state_1329514 state_1329539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329514
  · exact cover_1329539
#print axioms cover_1329513

def state_1329503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 11)))
theorem cover_1329503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329503 := by
  apply coveredState_split_literal (state := state_1329503) 4
    state_1329504 state_1329513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329504
  · exact cover_1329513
#print axioms cover_1329503

def state_1328689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
theorem cover_1328689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328689 := by
  apply coveredState_split_literal (state := state_1328689) 3
    state_1328690 state_1329503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328690
  · exact cover_1329503
#print axioms cover_1328689

def state_1328615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
theorem cover_1328615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328615 := by
  apply coveredState_split_literal (state := state_1328615) 0
    state_1328616 state_1328689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328616
  · exact cover_1328689
#print axioms cover_1328615

def state_1328614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1328614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328614 := by
  apply coveredState_split_literal (state := state_1328614) 2
    state_1328615 state_1329596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328615
  · exact cover_1329596
#print axioms cover_1328614

def state_1328613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1328613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328613 := by
  apply coveredState_split_literal (state := state_1328613) 1
    state_1328614 state_1329647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328614
  · exact cover_1329647
#print axioms cover_1328613

def state_1328597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_1328597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328597 := by
  apply coveredState_split_literal (state := state_1328597) 4
    state_1328598 state_1328613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328598
  · exact cover_1328613
#print axioms cover_1328597

def state_1328505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1328505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328505 := by
  apply coveredState_split_literal (state := state_1328505) 3
    state_1328506 state_1328597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328506
  · exact cover_1328597
#print axioms cover_1328505

def state_1329722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
theorem cover_1329722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329722 := by
  apply coveredState_split_literal (state := state_1329722) 3
    state_1329723 state_1329776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329723
  · exact cover_1329776
#print axioms cover_1329722

def state_1329721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1329721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329721 := by
  apply coveredState_split_literal (state := state_1329721) 2
    state_1329722 state_1329807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329722
  · exact cover_1329807
#print axioms cover_1329721

def state_1329720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1329720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329720 := by
  apply coveredState_split_literal (state := state_1329720) 1
    state_1329721 state_1329818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329721
  · exact cover_1329818
#print axioms cover_1329720

def state_1329714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_1329714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329714 := by
  apply coveredState_split_literal (state := state_1329714) 4
    state_1329715 state_1329720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329715
  · exact cover_1329720
#print axioms cover_1329714

def state_1329706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1329706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329706 := by
  apply coveredState_split_literal (state := state_1329706) 3
    state_1329707 state_1329714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329707
  · exact cover_1329714
#print axioms cover_1329706

def state_1328504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1328504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328504 := by
  apply coveredState_split_literal (state := state_1328504) 0
    state_1328505 state_1329706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328505
  · exact cover_1329706
#print axioms cover_1328504

def state_1328498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1328498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328498 := by
  apply coveredState_split_literal (state := state_1328498) 4
    state_1328499 state_1328504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328499
  · exact cover_1328504
#print axioms cover_1328498

def state_1328490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1328490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328490 := by
  apply coveredState_split_literal (state := state_1328490) 3
    state_1328491 state_1328498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1328491
  · exact cover_1328498
#print axioms cover_1328490

def state_1327474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1327474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327474 := by
  apply coveredState_split_literal (state := state_1327474) 2
    state_1327475 state_1328490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327475
  · exact cover_1328490
#print axioms cover_1327474

def state_1327473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1327473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327473 := by
  apply coveredState_split_literal (state := state_1327473) 1
    state_1327474 state_1329843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327474
  · exact cover_1329843
#print axioms cover_1327473

def state_1329929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1329929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329929 := by
  apply coveredState_split_literal (state := state_1329929) 3
    state_1329930 state_1329977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329930
  · exact cover_1329977
#print axioms cover_1329929

def state_1329928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1329928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329928 := by
  apply coveredState_split_literal (state := state_1329928) 2
    state_1329929 state_1330002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329929
  · exact cover_1330002
#print axioms cover_1329928

def state_1329892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1329892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329892 := by
  apply coveredState_split_literal (state := state_1329892) 1
    state_1329893 state_1329928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1329893
  · exact cover_1329928
#print axioms cover_1329892

def state_1327472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1327472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327472 := by
  apply coveredState_split_literal (state := state_1327472) 0
    state_1327473 state_1329892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327473
  · exact cover_1329892
#print axioms cover_1327472

def state_1330106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 24)))
theorem cover_1330106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330106 := by
  apply coveredState_split_literal (state := state_1330106) 2
    state_1330107 state_1330132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330107
  · exact cover_1330132
#print axioms cover_1330106

def state_1330105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 12)))
theorem cover_1330105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330105 := by
  apply coveredState_split_literal (state := state_1330105) 4
    state_1330106 state_1330177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330106
  · exact cover_1330177
#print axioms cover_1330105

def state_1330085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 12)))
theorem cover_1330085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330085 := by
  apply coveredState_split_literal (state := state_1330085) 0
    state_1330086 state_1330105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330086
  · exact cover_1330105
#print axioms cover_1330085

def state_1330084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 12)))
theorem cover_1330084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330084 := by
  apply coveredState_split_literal (state := state_1330084) 1
    state_1330085 state_1330188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330085
  · exact cover_1330188
#print axioms cover_1330084

def state_1330083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 6)))
theorem cover_1330083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330083 := by
  apply coveredState_split_literal (state := state_1330083) 4
    state_1330084 state_1330199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330084
  · exact cover_1330199
#print axioms cover_1330083
end Mub6.Numerical.CircleFullD0.Forest
