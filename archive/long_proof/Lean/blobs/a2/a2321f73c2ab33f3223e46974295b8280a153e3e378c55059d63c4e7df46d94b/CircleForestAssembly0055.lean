import CircleFullInterface
import CircleForestChunk0218
import CircleForestChunk0219
import CircleForestChunk0220
import CircleForestChunk0221
import CircleForestChunk0222
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_73758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 41)))
theorem cover_73758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73758 := by
  apply coveredState_split_literal (state := state_73758) 3
    state_73759 state_73810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73759
  · exact cover_73810
#print axioms cover_73758

def state_73736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 20)))
theorem cover_73736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73736 := by
  apply coveredState_split_literal (state := state_73736) 4
    state_73737 state_73758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73737
  · exact cover_73758
#print axioms cover_73736

def state_73726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_73726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73726 := by
  apply coveredState_split_literal (state := state_73726) 2
    state_73727 state_73736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73727
  · exact cover_73736
#print axioms cover_73726

def state_73725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_73725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73725 := by
  apply coveredState_split_literal (state := state_73725) 0
    state_73726 state_73825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73726
  · exact cover_73825
#print axioms cover_73725

def state_73724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_73724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73724 := by
  apply coveredState_split_literal (state := state_73724) 3
    state_73725 state_73832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73725
  · exact cover_73832
#print axioms cover_73724

def state_73714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_73714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73714 := by
  apply coveredState_split_literal (state := state_73714) 1
    state_73715 state_73724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73715
  · exact cover_73724
#print axioms cover_73714

def state_73713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 10)))
theorem cover_73713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73713 := by
  apply coveredState_split_literal (state := state_73713) 4
    state_73714 state_73841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73714
  · exact cover_73841
#print axioms cover_73713

def state_73902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 21)))
theorem cover_73902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73902 := by
  apply coveredState_split_literal (state := state_73902) 1
    state_73903 state_73920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73903
  · exact cover_73920
#print axioms cover_73902

def state_73868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 10)))
theorem cover_73868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73868 := by
  apply coveredState_split_literal (state := state_73868) 4
    state_73869 state_73902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73869
  · exact cover_73902
#print axioms cover_73868

def state_73712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_73712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73712 := by
  apply coveredState_split_literal (state := state_73712) 2
    state_73713 state_73868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73713
  · exact cover_73868
#print axioms cover_73712

def state_73711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_73711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73711 := by
  apply coveredState_split_literal (state := state_73711) 3
    state_73712 state_73981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73712
  · exact cover_73981
#print axioms cover_73711

def state_74082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 100) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 41)))
theorem cover_74082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74082 := by
  apply coveredState_split_literal (state := state_74082) 2
    state_74083 state_74098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74083
  · exact cover_74098
#print axioms cover_74082

def state_74081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 41)))
theorem cover_74081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74081 := by
  apply coveredState_split_literal (state := state_74081) 1
    state_74082 state_74157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74082
  · exact cover_74157
#print axioms cover_74081

def state_74218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 101) else (if j.val < 3 then 83 else (if j.val < 4 then 97 else 41)))
theorem cover_74218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74218 := by
  apply coveredState_split_literal (state := state_74218) 4
    state_74219 state_74226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74219
  · exact cover_74226
#print axioms cover_74218

def state_74200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 101) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 41)))
theorem cover_74200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74200 := by
  apply coveredState_split_literal (state := state_74200) 2
    state_74201 state_74218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74201
  · exact cover_74218
#print axioms cover_74200

def state_74180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 41)))
theorem cover_74180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74180 := by
  apply coveredState_split_literal (state := state_74180) 1
    state_74181 state_74200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74181
  · exact cover_74200
#print axioms cover_74180

def state_74080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 41)))
theorem cover_74080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74080 := by
  apply coveredState_split_literal (state := state_74080) 0
    state_74081 state_74180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74081
  · exact cover_74180
#print axioms cover_74080

def state_74078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 41)))
theorem cover_74078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74078 := by
  apply coveredState_split_literal (state := state_74078) 3
    state_74079 state_74080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74079
  · exact cover_74080
#print axioms cover_74078

def state_74046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 20)))
theorem cover_74046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74046 := by
  apply coveredState_split_literal (state := state_74046) 4
    state_74047 state_74078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74047
  · exact cover_74078
#print axioms cover_74046

def state_74006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_74006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74006 := by
  apply coveredState_split_literal (state := state_74006) 2
    state_74007 state_74046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74007
  · exact cover_74046
#print axioms cover_74006

def state_74005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_74005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74005 := by
  apply coveredState_split_literal (state := state_74005) 1
    state_74006 state_74289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74006
  · exact cover_74289
#print axioms cover_74005

def state_74338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_74338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74338 := by
  apply coveredState_split_literal (state := state_74338) 1
    state_74339 state_74388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74339
  · exact cover_74388
#print axioms cover_74338

def state_74004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
theorem cover_74004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74004 := by
  apply coveredState_split_literal (state := state_74004) 0
    state_74005 state_74338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74005
  · exact cover_74338
#print axioms cover_74004

def state_74417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 20)))
theorem cover_74417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74417 := by
  apply coveredState_split_literal (state := state_74417) 0
    state_74418 state_74477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74418
  · exact cover_74477
#print axioms cover_74417

def state_74003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_74003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74003 := by
  apply coveredState_split_literal (state := state_74003) 3
    state_74004 state_74417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74004
  · exact cover_74417
#print axioms cover_74003

def state_74538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 42)))
theorem cover_74538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74538 := by
  apply coveredState_split_literal (state := state_74538) 3
    state_74539 state_74598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74539
  · exact cover_74598
#print axioms cover_74538

def state_74530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 42)))
theorem cover_74530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74530 := by
  apply coveredState_split_literal (state := state_74530) 2
    state_74531 state_74538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74531
  · exact cover_74538
#print axioms cover_74530

def state_74529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 21)))
theorem cover_74529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74529 := by
  apply coveredState_split_literal (state := state_74529) 4
    state_74530 state_74627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74530
  · exact cover_74627
#print axioms cover_74529

def state_74528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 21)))
theorem cover_74528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74528 := by
  apply coveredState_split_literal (state := state_74528) 1
    state_74529 state_74628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74529
  · exact cover_74628
#print axioms cover_74528

def state_74527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 21)))
theorem cover_74527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74527 := by
  apply coveredState_split_literal (state := state_74527) 0
    state_74528 state_74629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74528
  · exact cover_74629
#print axioms cover_74527

def state_74526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 21)))
theorem cover_74526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74526 := by
  apply coveredState_split_literal (state := state_74526) 3
    state_74527 state_74666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74527
  · exact cover_74666
#print axioms cover_74526

def state_74002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 10)))
theorem cover_74002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74002 := by
  apply coveredState_split_literal (state := state_74002) 4
    state_74003 state_74526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74003
  · exact cover_74526
#print axioms cover_74002
end Mub6.Numerical.CircleFullPrototype.Forest
