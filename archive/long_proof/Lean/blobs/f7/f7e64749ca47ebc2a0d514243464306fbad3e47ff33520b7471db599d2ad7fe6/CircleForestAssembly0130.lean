import CircleFullInterface
import CircleForestAssembly0129
import CircleForestChunk0511
import CircleForestChunk0512
import CircleForestChunk0513
import CircleForestChunk0514
import CircleForestChunk0515
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_284122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 24)))
theorem cover_284122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284122 := by
  apply coveredState_split_literal (state := state_284122) 4
    state_284123 state_284336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284123
  · exact cover_284336
#print axioms cover_284122

def state_284121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 24)))
theorem cover_284121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284121 := by
  apply coveredState_split_literal (state := state_284121) 3
    state_284122 state_284345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284122
  · exact cover_284345
#print axioms cover_284121

def state_284120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
theorem cover_284120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284120 := by
  apply coveredState_split_literal (state := state_284120) 2
    state_284121 state_284366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284121
  · exact cover_284366
#print axioms cover_284120

def state_284384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
theorem cover_284384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284384 := by
  apply coveredState_split_literal (state := state_284384) 3
    state_284385 state_284410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284385
  · exact cover_284410
#print axioms cover_284384

def state_284370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
theorem cover_284370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284370 := by
  apply coveredState_split_literal (state := state_284370) 0
    state_284371 state_284384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284371
  · exact cover_284384
#print axioms cover_284370

def state_284369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 24)))
theorem cover_284369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284369 := by
  apply coveredState_split_literal (state := state_284369) 4
    state_284370 state_284455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284370
  · exact cover_284455
#print axioms cover_284369

def state_284368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 24)))
theorem cover_284368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284368 := by
  apply coveredState_split_literal (state := state_284368) 3
    state_284369 state_284476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284369
  · exact cover_284476
#print axioms cover_284368

def state_284367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
theorem cover_284367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284367 := by
  apply coveredState_split_literal (state := state_284367) 2
    state_284368 state_284491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284368
  · exact cover_284491
#print axioms cover_284367

def state_284119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
theorem cover_284119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284119 := by
  apply coveredState_split_literal (state := state_284119) 1
    state_284120 state_284367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284120
  · exact cover_284367
#print axioms cover_284119

def state_284118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
theorem cover_284118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284118 := by
  apply coveredState_split_literal (state := state_284118) 4
    state_284119 state_284526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284119
  · exact cover_284526
#print axioms cover_284118

def state_284572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
theorem cover_284572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284572 := by
  apply coveredState_split_literal (state := state_284572) 1
    state_284573 state_284600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284573
  · exact cover_284600
#print axioms cover_284572

def state_284571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
theorem cover_284571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284571 := by
  apply coveredState_split_literal (state := state_284571) 0
    state_284572 state_284645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284572
  · exact cover_284645
#print axioms cover_284571

def state_284570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 48)))
theorem cover_284570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284570 := by
  apply coveredState_split_literal (state := state_284570) 4
    state_284571 state_284650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284571
  · exact cover_284650
#print axioms cover_284570

def state_284569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 48)))
theorem cover_284569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284569 := by
  apply coveredState_split_literal (state := state_284569) 2
    state_284570 state_284695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284570
  · exact cover_284695
#print axioms cover_284569

def state_284555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
theorem cover_284555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284555 := by
  apply coveredState_split_literal (state := state_284555) 3
    state_284556 state_284569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284556
  · exact cover_284569
#print axioms cover_284555

def state_284545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
theorem cover_284545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284545 := by
  apply coveredState_split_literal (state := state_284545) 1
    state_284546 state_284555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284546
  · exact cover_284555
#print axioms cover_284545

def state_284544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 24)))
theorem cover_284544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284544 := by
  apply coveredState_split_literal (state := state_284544) 4
    state_284545 state_284700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284545
  · exact cover_284700
#print axioms cover_284544

def state_284543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 24)))
theorem cover_284543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284543 := by
  apply coveredState_split_literal (state := state_284543) 0
    state_284544 state_284729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284544
  · exact cover_284729
#print axioms cover_284543

def state_284542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 24)))
theorem cover_284542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284542 := by
  apply coveredState_split_literal (state := state_284542) 3
    state_284543 state_284748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284543
  · exact cover_284748
#print axioms cover_284542

def state_284541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
theorem cover_284541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284541 := by
  apply coveredState_split_literal (state := state_284541) 2
    state_284542 state_284785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284542
  · exact cover_284785
#print axioms cover_284541

def state_284810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 48)))
theorem cover_284810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284810 := by
  apply coveredState_split_literal (state := state_284810) 4
    state_284811 state_284854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284811
  · exact cover_284854
#print axioms cover_284810

def state_284809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 48)))
theorem cover_284809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284809 := by
  apply coveredState_split_literal (state := state_284809) 2
    state_284810 state_284899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284810
  · exact cover_284899
#print axioms cover_284809

def state_284808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 48)))
theorem cover_284808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284808 := by
  apply coveredState_split_literal (state := state_284808) 1
    state_284809 state_284914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284809
  · exact cover_284914
#print axioms cover_284808

def state_284794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
theorem cover_284794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284794 := by
  apply coveredState_split_literal (state := state_284794) 3
    state_284795 state_284808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284795
  · exact cover_284808
#print axioms cover_284794

def state_284793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 24)))
theorem cover_284793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284793 := by
  apply coveredState_split_literal (state := state_284793) 4
    state_284794 state_284935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284794
  · exact cover_284935
#print axioms cover_284793

def state_284792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 24)))
theorem cover_284792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284792 := by
  apply coveredState_split_literal (state := state_284792) 0
    state_284793 state_284970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284793
  · exact cover_284970
#print axioms cover_284792

def state_284984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 24)))
theorem cover_284984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284984 := by
  apply coveredState_split_literal (state := state_284984) 4
    state_284985 state_285042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284985
  · exact cover_285042
#print axioms cover_284984

def state_284983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 24)))
theorem cover_284983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284983 := by
  apply coveredState_split_literal (state := state_284983) 0
    state_284984 state_285077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284984
  · exact cover_285077
#print axioms cover_284983

def state_284791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 24)))
theorem cover_284791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284791 := by
  apply coveredState_split_literal (state := state_284791) 3
    state_284792 state_284983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284792
  · exact cover_284983
#print axioms cover_284791

def state_284790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
theorem cover_284790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284790 := by
  apply coveredState_split_literal (state := state_284790) 2
    state_284791 state_285106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284791
  · exact cover_285106
#print axioms cover_284790

def state_284540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
theorem cover_284540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284540 := by
  apply coveredState_split_literal (state := state_284540) 1
    state_284541 state_284790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284541
  · exact cover_284790
#print axioms cover_284540

def state_284539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
theorem cover_284539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284539 := by
  apply coveredState_split_literal (state := state_284539) 4
    state_284540 state_285135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284540
  · exact cover_285135
#print axioms cover_284539
end Mub6.Numerical.CircleFullPrototype.Forest
