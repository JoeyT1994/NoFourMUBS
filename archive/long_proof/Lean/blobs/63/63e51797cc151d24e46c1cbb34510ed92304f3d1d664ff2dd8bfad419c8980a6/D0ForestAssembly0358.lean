import D0FullInterface
import D0ForestAssembly0357
import D0ForestChunk1390
import D0ForestChunk1391
import D0ForestChunk1392
import D0ForestChunk1393
import D0ForestChunk1394
import D0ForestChunk1395
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1634048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_1634048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634048 := by
  apply coveredState_split_literal (state := state_1634048) 3
    state_1634049 state_1634168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634049
  · exact cover_1634168
#print axioms cover_1634048

def state_1633666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1633666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633666 := by
  apply coveredState_split_literal (state := state_1633666) 4
    state_1633667 state_1634048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633667
  · exact cover_1634048
#print axioms cover_1633666

def state_1633665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_1633665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633665 := by
  apply coveredState_split_literal (state := state_1633665) 3
    state_1633666 state_1634445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633666
  · exact cover_1634445
#print axioms cover_1633665

def state_1633583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1633583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633583 := by
  apply coveredState_split_literal (state := state_1633583) 2
    state_1633584 state_1633665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1633584
  · exact cover_1633665
#print axioms cover_1633583

def state_1631113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1631113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631113 := by
  apply coveredState_split_literal (state := state_1631113) 1
    state_1631114 state_1633583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631114
  · exact cover_1633583
#print axioms cover_1631113

def state_1634498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1634498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634498 := by
  apply coveredState_split_literal (state := state_1634498) 1
    state_1634499 state_1634534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634499
  · exact cover_1634534
#print axioms cover_1634498

def state_1631112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1631112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631112 := by
  apply coveredState_split_literal (state := state_1631112) 0
    state_1631113 state_1634498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631113
  · exact cover_1634498
#print axioms cover_1631112

def state_1634616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 10)))
theorem cover_1634616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634616 := by
  apply coveredState_split_literal (state := state_1634616) 2
    state_1634617 state_1634624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634617
  · exact cover_1634624
#print axioms cover_1634616

def state_1634615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 10)))
theorem cover_1634615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634615 := by
  apply coveredState_split_literal (state := state_1634615) 0
    state_1634616 state_1634687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634616
  · exact cover_1634687
#print axioms cover_1634615

def state_1634603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 10)))
theorem cover_1634603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634603 := by
  apply coveredState_split_literal (state := state_1634603) 3
    state_1634604 state_1634615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634604
  · exact cover_1634615
#print axioms cover_1634603

def state_1634579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 10)))
theorem cover_1634579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634579 := by
  apply coveredState_split_literal (state := state_1634579) 1
    state_1634580 state_1634603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634580
  · exact cover_1634603
#print axioms cover_1634579

def state_1634578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 5)))
theorem cover_1634578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634578 := by
  apply coveredState_split_literal (state := state_1634578) 4
    state_1634579 state_1634694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634579
  · exact cover_1634694
#print axioms cover_1634578

def state_1634746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 10)))
theorem cover_1634746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634746 := by
  apply coveredState_split_literal (state := state_1634746) 0
    state_1634747 state_1634784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634747
  · exact cover_1634784
#print axioms cover_1634746

def state_1634698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 10)))
theorem cover_1634698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634698 := by
  apply coveredState_split_literal (state := state_1634698) 1
    state_1634699 state_1634746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634699
  · exact cover_1634746
#print axioms cover_1634698

def state_1634697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 5)))
theorem cover_1634697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634697 := by
  apply coveredState_split_literal (state := state_1634697) 4
    state_1634698 state_1634823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634698
  · exact cover_1634823
#print axioms cover_1634697

def state_1634577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
theorem cover_1634577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634577 := by
  apply coveredState_split_literal (state := state_1634577) 3
    state_1634578 state_1634697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634578
  · exact cover_1634697
#print axioms cover_1634577

def state_1634569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1634569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634569 := by
  apply coveredState_split_literal (state := state_1634569) 2
    state_1634570 state_1634577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634570
  · exact cover_1634577
#print axioms cover_1634569

def state_1634568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1634568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634568 := by
  apply coveredState_split_literal (state := state_1634568) 1
    state_1634569 state_1634872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634569
  · exact cover_1634872
#print axioms cover_1634568

def state_1634567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1634567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634567 := by
  apply coveredState_split_literal (state := state_1634567) 0
    state_1634568 state_1634933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634568
  · exact cover_1634933
#print axioms cover_1634567

def state_1631111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1631111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631111 := by
  apply coveredState_split_literal (state := state_1631111) 4
    state_1631112 state_1634567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631112
  · exact cover_1634567
#print axioms cover_1631111

def state_1634970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_1634970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634970 := by
  apply coveredState_split_literal (state := state_1634970) 4
    state_1634971 state_1634984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634971
  · exact cover_1634984
#print axioms cover_1634970

def state_1631110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1631110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631110 := by
  apply coveredState_split_literal (state := state_1631110) 3
    state_1631111 state_1634970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631111
  · exact cover_1634970
#print axioms cover_1631110

def state_1635091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 8)))
theorem cover_1635091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635091 := by
  apply coveredState_split_literal (state := state_1635091) 0
    state_1635092 state_1635143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635092
  · exact cover_1635143
#print axioms cover_1635091

def state_1635090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 8)))
theorem cover_1635090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635090 := by
  apply coveredState_split_literal (state := state_1635090) 3
    state_1635091 state_1635180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635091
  · exact cover_1635180
#print axioms cover_1635090

def state_1635048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 8)))
theorem cover_1635048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635048 := by
  apply coveredState_split_literal (state := state_1635048) 1
    state_1635049 state_1635090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635049
  · exact cover_1635090
#print axioms cover_1635048

def state_1635215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 24 else 9)))
theorem cover_1635215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635215 := by
  apply coveredState_split_literal (state := state_1635215) 4
    state_1635216 state_1635263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635216
  · exact cover_1635263
#print axioms cover_1635215

def state_1635214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
theorem cover_1635214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635214 := by
  apply coveredState_split_literal (state := state_1635214) 2
    state_1635215 state_1635294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635215
  · exact cover_1635294
#print axioms cover_1635214

def state_1635213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
theorem cover_1635213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635213 := by
  apply coveredState_split_literal (state := state_1635213) 0
    state_1635214 state_1635303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635214
  · exact cover_1635303
#print axioms cover_1635213

def state_1635386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
theorem cover_1635386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635386 := by
  apply coveredState_split_literal (state := state_1635386) 3
    state_1635387 state_1635442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635387
  · exact cover_1635442
#print axioms cover_1635386

def state_1635372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
theorem cover_1635372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635372 := by
  apply coveredState_split_literal (state := state_1635372) 1
    state_1635373 state_1635386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635373
  · exact cover_1635386
#print axioms cover_1635372

def state_1635360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 9)))
theorem cover_1635360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635360 := by
  apply coveredState_split_literal (state := state_1635360) 4
    state_1635361 state_1635372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635361
  · exact cover_1635372
#print axioms cover_1635360

def state_1635359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1635359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635359 := by
  apply coveredState_split_literal (state := state_1635359) 2
    state_1635360 state_1635453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635360
  · exact cover_1635453
#print axioms cover_1635359
end Mub6.Numerical.CircleFullD0.Forest
