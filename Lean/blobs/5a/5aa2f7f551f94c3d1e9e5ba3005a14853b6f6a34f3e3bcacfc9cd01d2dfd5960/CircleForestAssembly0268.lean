import CircleFullInterface
import CircleForestAssembly0267
import CircleForestChunk1025
import CircleForestChunk1026
import CircleForestChunk1028
import CircleForestChunk1029
import CircleForestChunk1030
import CircleForestChunk1031
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1547157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 43)))
theorem cover_1547157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547157 := by
  apply coveredState_split_literal (state := state_1547157) 4
    state_1547158 state_1547213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547158
  · exact cover_1547213
#print axioms cover_1547157

def state_1547322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
theorem cover_1547322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547322 := by
  apply coveredState_split_literal (state := state_1547322) 2
    state_1547323 state_1547378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547323
  · exact cover_1547378
#print axioms cover_1547322

def state_1547321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
theorem cover_1547321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547321 := by
  apply coveredState_split_literal (state := state_1547321) 0
    state_1547322 state_1547393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547322
  · exact cover_1547393
#print axioms cover_1547321

def state_1547289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
theorem cover_1547289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547289 := by
  apply coveredState_split_literal (state := state_1547289) 1
    state_1547290 state_1547321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547290
  · exact cover_1547321
#print axioms cover_1547289

def state_1547275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 86)))
theorem cover_1547275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547275 := by
  apply coveredState_split_literal (state := state_1547275) 3
    state_1547276 state_1547289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547276
  · exact cover_1547289
#print axioms cover_1547275

def state_1547414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 87)))
theorem cover_1547414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547414 := by
  apply coveredState_split_literal (state := state_1547414) 4
    state_1547415 state_1547474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547415
  · exact cover_1547474
#print axioms cover_1547414

def state_1547413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
theorem cover_1547413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547413 := by
  apply coveredState_split_literal (state := state_1547413) 2
    state_1547414 state_1547483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547414
  · exact cover_1547483
#print axioms cover_1547413

def state_1547412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
theorem cover_1547412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547412 := by
  apply coveredState_split_literal (state := state_1547412) 0
    state_1547413 state_1547484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547413
  · exact cover_1547484
#print axioms cover_1547412

def state_1547404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
theorem cover_1547404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547404 := by
  apply coveredState_split_literal (state := state_1547404) 1
    state_1547405 state_1547412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547405
  · exact cover_1547412
#print axioms cover_1547404

def state_1547398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 87)))
theorem cover_1547398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547398 := by
  apply coveredState_split_literal (state := state_1547398) 3
    state_1547399 state_1547404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547399
  · exact cover_1547404
#print axioms cover_1547398

def state_1547274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 43)))
theorem cover_1547274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547274 := by
  apply coveredState_split_literal (state := state_1547274) 4
    state_1547275 state_1547398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547275
  · exact cover_1547398
#print axioms cover_1547274

def state_1547156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
theorem cover_1547156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547156 := by
  apply coveredState_split_literal (state := state_1547156) 2
    state_1547157 state_1547274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547157
  · exact cover_1547274
#print axioms cover_1547156

def state_1547155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
theorem cover_1547155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547155 := by
  apply coveredState_split_literal (state := state_1547155) 0
    state_1547156 state_1547491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547156
  · exact cover_1547491
#print axioms cover_1547155

def state_1547546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 82 else 86)))
theorem cover_1547546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547546 := by
  apply coveredState_split_literal (state := state_1547546) 2
    state_1547547 state_1547566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547547
  · exact cover_1547566
#print axioms cover_1547546

def state_1547545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 82 else 86)))
theorem cover_1547545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547545 := by
  apply coveredState_split_literal (state := state_1547545) 0
    state_1547546 state_1547613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547546
  · exact cover_1547613
#print axioms cover_1547545

def state_1547544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 86)))
theorem cover_1547544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547544 := by
  apply coveredState_split_literal (state := state_1547544) 3
    state_1547545 state_1547620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547545
  · exact cover_1547620
#print axioms cover_1547544

def state_1547520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 86)))
theorem cover_1547520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547520 := by
  apply coveredState_split_literal (state := state_1547520) 1
    state_1547521 state_1547544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547521
  · exact cover_1547544
#print axioms cover_1547520

def state_1547519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 43)))
theorem cover_1547519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547519 := by
  apply coveredState_split_literal (state := state_1547519) 4
    state_1547520 state_1547621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547520
  · exact cover_1547621
#print axioms cover_1547519

def state_1547515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
theorem cover_1547515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547515 := by
  apply coveredState_split_literal (state := state_1547515) 2
    state_1547516 state_1547519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547516
  · exact cover_1547519
#print axioms cover_1547515

def state_1547514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
theorem cover_1547514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547514 := by
  apply coveredState_split_literal (state := state_1547514) 0
    state_1547515 state_1547630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547515
  · exact cover_1547630
#print axioms cover_1547514

def state_1547154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 43)))
theorem cover_1547154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547154 := by
  apply coveredState_split_literal (state := state_1547154) 3
    state_1547155 state_1547514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547155
  · exact cover_1547514
#print axioms cover_1547154

def state_1547126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 43)))
theorem cover_1547126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547126 := by
  apply coveredState_split_literal (state := state_1547126) 1
    state_1547127 state_1547154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547127
  · exact cover_1547154
#print axioms cover_1547126

def state_1546840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 21)))
theorem cover_1546840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546840 := by
  apply coveredState_split_literal (state := state_1546840) 4
    state_1546841 state_1547126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546841
  · exact cover_1547126
#print axioms cover_1546840

def state_1546782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1546782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546782 := by
  apply coveredState_split_literal (state := state_1546782) 2
    state_1546783 state_1546840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546783
  · exact cover_1546840
#print axioms cover_1546782

def state_1546781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1546781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546781 := by
  apply coveredState_split_literal (state := state_1546781) 0
    state_1546782 state_1547635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546782
  · exact cover_1547635
#print axioms cover_1546781

def state_1546765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1546765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546765 := by
  apply coveredState_split_literal (state := state_1546765) 1
    state_1546766 state_1546781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546766
  · exact cover_1546781
#print axioms cover_1546765

def state_1546617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 10)))
theorem cover_1546617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546617 := by
  apply coveredState_split_literal (state := state_1546617) 4
    state_1546618 state_1546765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546618
  · exact cover_1546765
#print axioms cover_1546617

def state_1546616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 10)))
theorem cover_1546616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546616 := by
  apply coveredState_split_literal (state := state_1546616) 3
    state_1546617 state_1547658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546617
  · exact cover_1547658
#print axioms cover_1546616

def state_1546594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1546594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546594 := by
  apply coveredState_split_literal (state := state_1546594) 2
    state_1546595 state_1546616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546595
  · exact cover_1546616
#print axioms cover_1546594

def state_1543604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1543604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543604 := by
  apply coveredState_split_literal (state := state_1543604) 0
    state_1543605 state_1546594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543605
  · exact cover_1546594
#print axioms cover_1543604

def state_1547773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 101 else (if j.val < 4 then 40 else 43)))
theorem cover_1547773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547773 := by
  apply coveredState_split_literal (state := state_1547773) 4
    state_1547774 state_1547787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547774
  · exact cover_1547787
#print axioms cover_1547773

def state_1547759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 43)))
theorem cover_1547759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547759 := by
  apply coveredState_split_literal (state := state_1547759) 2
    state_1547760 state_1547773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547760
  · exact cover_1547773
#print axioms cover_1547759
end Mub6.Numerical.CircleFullD0.Forest
