import D0FullInterface
import D0ForestAssembly0396
import D0ForestAssembly0485
import D0ForestAssembly0486
import D0ForestAssembly0487
import D0ForestChunk1913
import D0ForestChunk1918
import D0ForestChunk1919
import D0ForestChunk1920
import D0ForestChunk1921
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2333565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 31)))
theorem cover_2333565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333565 := by
  apply coveredState_split_literal (state := state_2333565) 2
    state_2333566 state_2333665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333566
  · exact cover_2333665
#print axioms cover_2333565

def state_2333559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 15)))
theorem cover_2333559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333559 := by
  apply coveredState_split_literal (state := state_2333559) 4
    state_2333560 state_2333565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333560
  · exact cover_2333565
#print axioms cover_2333559

def state_2333449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 15)))
theorem cover_2333449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333449 := by
  apply coveredState_split_literal (state := state_2333449) 1
    state_2333450 state_2333559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333450
  · exact cover_2333559
#print axioms cover_2333449

def state_2333448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 15)))
theorem cover_2333448 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333448 := by
  apply coveredState_split_literal (state := state_2333448) 3
    state_2333449 state_2333672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333449
  · exact cover_2333672
#print axioms cover_2333448

def state_2333447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 15)))
theorem cover_2333447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333447 := by
  apply coveredState_split_literal (state := state_2333447) 2
    state_2333448 state_2333685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333448
  · exact cover_2333685
#print axioms cover_2333447

def state_2333446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 15)))
theorem cover_2333446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333446 := by
  apply coveredState_split_literal (state := state_2333446) 0
    state_2333447 state_2333692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333447
  · exact cover_2333692
#print axioms cover_2333446

def state_2333436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_2333436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333436 := by
  apply coveredState_split_literal (state := state_2333436) 4
    state_2333437 state_2333446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333437
  · exact cover_2333446
#print axioms cover_2333436

def state_2333435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
theorem cover_2333435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333435 := by
  apply coveredState_split_literal (state := state_2333435) 1
    state_2333436 state_2333709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333436
  · exact cover_2333709
#print axioms cover_2333435

def state_2333221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
theorem cover_2333221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333221 := by
  apply coveredState_split_literal (state := state_2333221) 3
    state_2333222 state_2333435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333222
  · exact cover_2333435
#print axioms cover_2333221

def state_2333220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_2333220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333220 := by
  apply coveredState_split_literal (state := state_2333220) 2
    state_2333221 state_2333718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333221
  · exact cover_2333718
#print axioms cover_2333220

def state_2332400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_2332400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332400 := by
  apply coveredState_split_literal (state := state_2332400) 0
    state_2332401 state_2333220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332401
  · exact cover_2333220
#print axioms cover_2332400

def state_2332384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_2332384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332384 := by
  apply coveredState_split_literal (state := state_2332384) 4
    state_2332385 state_2332400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332385
  · exact cover_2332400
#print axioms cover_2332384

def state_2332338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_2332338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332338 := by
  apply coveredState_split_literal (state := state_2332338) 3
    state_2332339 state_2332384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332339
  · exact cover_2332384
#print axioms cover_2332338

def state_2332337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2332337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332337 := by
  apply coveredState_split_literal (state := state_2332337) 2
    state_2332338 state_2333733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332338
  · exact cover_2333733
#print axioms cover_2332337

def state_2332085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2332085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332085 := by
  apply coveredState_split_literal (state := state_2332085) 1
    state_2332086 state_2332337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2332086
  · exact cover_2332337
#print axioms cover_2332085

def state_2331859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2331859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331859 := by
  apply coveredState_split_literal (state := state_2331859) 0
    state_2331860 state_2332085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331860
  · exact cover_2332085
#print axioms cover_2331859

def state_2331743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2331743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331743 := by
  apply coveredState_split_literal (state := state_2331743) 4
    state_2331744 state_2331859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331744
  · exact cover_2331859
#print axioms cover_2331743

def state_2333755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2333755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333755 := by
  apply coveredState_split_literal (state := state_2333755) 1
    state_2333756 state_2333815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333756
  · exact cover_2333815
#print axioms cover_2333755

def state_2333745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2333745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333745 := by
  apply coveredState_split_literal (state := state_2333745) 0
    state_2333746 state_2333755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333746
  · exact cover_2333755
#print axioms cover_2333745

def state_2333851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2333851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333851 := by
  apply coveredState_split_literal (state := state_2333851) 3
    state_2333852 state_2333915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333852
  · exact cover_2333915
#print axioms cover_2333851

def state_2333850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2333850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333850 := by
  apply coveredState_split_literal (state := state_2333850) 2
    state_2333851 state_2333920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333851
  · exact cover_2333920
#print axioms cover_2333850

def state_2333849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2333849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333849 := by
  apply coveredState_split_literal (state := state_2333849) 1
    state_2333850 state_2333929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333850
  · exact cover_2333929
#print axioms cover_2333849

def state_2333987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2333987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333987 := by
  apply coveredState_split_literal (state := state_2333987) 3
    state_2333988 state_2334051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333988
  · exact cover_2334051
#print axioms cover_2333987

def state_2333986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2333986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333986 := by
  apply coveredState_split_literal (state := state_2333986) 2
    state_2333987 state_2334066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333987
  · exact cover_2334066
#print axioms cover_2333986

def state_2333942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2333942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333942 := by
  apply coveredState_split_literal (state := state_2333942) 1
    state_2333943 state_2333986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333943
  · exact cover_2333986
#print axioms cover_2333942

def state_2333848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2333848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333848 := by
  apply coveredState_split_literal (state := state_2333848) 0
    state_2333849 state_2333942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333849
  · exact cover_2333942
#print axioms cover_2333848

def state_2333744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2333744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333744 := by
  apply coveredState_split_literal (state := state_2333744) 4
    state_2333745 state_2333848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2333745
  · exact cover_2333848
#print axioms cover_2333744

def state_2331742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2331742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331742 := by
  apply coveredState_split_literal (state := state_2331742) 3
    state_2331743 state_2333744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331743
  · exact cover_2333744
#print axioms cover_2331742

def state_2244398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2244398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244398 := by
  apply coveredState_split_literal (state := state_2244398) 2
    state_2244399 state_2331742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244399
  · exact cover_2331742
#print axioms cover_2244398

def state_2240852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2240852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240852 := by
  apply coveredState_split_literal (state := state_2240852) 1
    state_2240853 state_2244398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240853
  · exact cover_2244398
#print axioms cover_2240852

def state_2334116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2334116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334116 := by
  apply coveredState_split_literal (state := state_2334116) 0
    state_2334117 state_2334180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334117
  · exact cover_2334180
#print axioms cover_2334116

def state_2334115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_2334115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334115 := by
  apply coveredState_split_literal (state := state_2334115) 4
    state_2334116 state_2334203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334116
  · exact cover_2334203
#print axioms cover_2334115
end Mub6.Numerical.CircleFullD0.Forest
