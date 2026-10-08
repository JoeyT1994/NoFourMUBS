import CircleFullInterface
import CircleForestChunk0187
import CircleForestChunk0188
import CircleForestChunk0189
import CircleForestChunk0190
import CircleForestChunk0191
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_66504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_66504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66504 := by
  apply coveredState_split_literal (state := state_66504) 3
    state_66505 state_66518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66505
  · exact cover_66518
#print axioms cover_66504

def state_66502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_66502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66502 := by
  apply coveredState_split_literal (state := state_66502) 1
    state_66503 state_66504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66503
  · exact cover_66504
#print axioms cover_66502

def state_66501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_66501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66501 := by
  apply coveredState_split_literal (state := state_66501) 0
    state_66502 state_66571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66502
  · exact cover_66571
#print axioms cover_66501

def state_66500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_66500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66500 := by
  apply coveredState_split_literal (state := state_66500) 4
    state_66501 state_66588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66501
  · exact cover_66588
#print axioms cover_66500

def state_66466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_66466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66466 := by
  apply coveredState_split_literal (state := state_66466) 3
    state_66467 state_66500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66467
  · exact cover_66500
#print axioms cover_66466

def state_66627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_66627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66627 := by
  apply coveredState_split_literal (state := state_66627) 0
    state_66628 state_66671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66628
  · exact cover_66671
#print axioms cover_66627

def state_66626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_66626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66626 := by
  apply coveredState_split_literal (state := state_66626) 4
    state_66627 state_66702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66627
  · exact cover_66702
#print axioms cover_66626

def state_66747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_66747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66747 := by
  apply coveredState_split_literal (state := state_66747) 1
    state_66748 state_66755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66748
  · exact cover_66755
#print axioms cover_66747

def state_66746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_66746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66746 := by
  apply coveredState_split_literal (state := state_66746) 0
    state_66747 state_66812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66747
  · exact cover_66812
#print axioms cover_66746

def state_66745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
theorem cover_66745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66745 := by
  apply coveredState_split_literal (state := state_66745) 4
    state_66746 state_66823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66746
  · exact cover_66823
#print axioms cover_66745

def state_66735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_66735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66735 := by
  apply coveredState_split_literal (state := state_66735) 3
    state_66736 state_66745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66736
  · exact cover_66745
#print axioms cover_66735

def state_66734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_66734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66734 := by
  apply coveredState_split_literal (state := state_66734) 2
    state_66735 state_66834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66735
  · exact cover_66834
#print axioms cover_66734

def state_66726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_66726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66726 := by
  apply coveredState_split_literal (state := state_66726) 1
    state_66727 state_66734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66727
  · exact cover_66734
#print axioms cover_66726

def state_66725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_66725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66725 := by
  apply coveredState_split_literal (state := state_66725) 0
    state_66726 state_66849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66726
  · exact cover_66849
#print axioms cover_66725

def state_66723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_66723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66723 := by
  apply coveredState_split_literal (state := state_66723) 4
    state_66724 state_66725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66724
  · exact cover_66725
#print axioms cover_66723

def state_66625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_66625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66625 := by
  apply coveredState_split_literal (state := state_66625) 3
    state_66626 state_66723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66626
  · exact cover_66723
#print axioms cover_66625

def state_66465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_66465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66465 := by
  apply coveredState_split_literal (state := state_66465) 2
    state_66466 state_66625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66466
  · exact cover_66625
#print axioms cover_66465

def state_66449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_66449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66449 := by
  apply coveredState_split_literal (state := state_66449) 1
    state_66450 state_66465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66450
  · exact cover_66465
#print axioms cover_66449

def state_66860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_66860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66860 := by
  apply coveredState_split_literal (state := state_66860) 1
    state_66861 state_66876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66861
  · exact cover_66876
#print axioms cover_66860

def state_66448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_66448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66448 := by
  apply coveredState_split_literal (state := state_66448) 0
    state_66449 state_66860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66449
  · exact cover_66860
#print axioms cover_66448

def state_66927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_66927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66927 := by
  apply coveredState_split_literal (state := state_66927) 0
    state_66928 state_66989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66928
  · exact cover_66989
#print axioms cover_66927

def state_66447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_66447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66447 := by
  apply coveredState_split_literal (state := state_66447) 4
    state_66448 state_66927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66448
  · exact cover_66927
#print axioms cover_66447

def state_67100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_67100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67100 := by
  apply coveredState_split_literal (state := state_67100) 1
    state_67101 state_67110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67101
  · exact cover_67110
#print axioms cover_67100

def state_67099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_67099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67099 := by
  apply coveredState_split_literal (state := state_67099) 0
    state_67100 state_67171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67100
  · exact cover_67171
#print axioms cover_67099

def state_67073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_67073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67073 := by
  apply coveredState_split_literal (state := state_67073) 4
    state_67074 state_67099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67074
  · exact cover_67099
#print axioms cover_67073

def state_67072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_67072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67072 := by
  apply coveredState_split_literal (state := state_67072) 3
    state_67073 state_67184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67073
  · exact cover_67184
#print axioms cover_67072

def state_67046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_67046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67046 := by
  apply coveredState_split_literal (state := state_67046) 2
    state_67047 state_67072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67047
  · exact cover_67072
#print axioms cover_67046

def state_67026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_67026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67026 := by
  apply coveredState_split_literal (state := state_67026) 1
    state_67027 state_67046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67027
  · exact cover_67046
#print axioms cover_67026

def state_67025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_67025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67025 := by
  apply coveredState_split_literal (state := state_67025) 0
    state_67026 state_67187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67026
  · exact cover_67187
#print axioms cover_67025

def state_67224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_67224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67224 := by
  apply coveredState_split_literal (state := state_67224) 3
    state_67225 state_67270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67225
  · exact cover_67270
#print axioms cover_67224

def state_67210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_67210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67210 := by
  apply coveredState_split_literal (state := state_67210) 2
    state_67211 state_67224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67211
  · exact cover_67224
#print axioms cover_67210

def state_67306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_67306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67306 := by
  apply coveredState_split_literal (state := state_67306) 4
    state_67307 state_67356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67307
  · exact cover_67356
#print axioms cover_67306
end Mub6.Numerical.CircleFullPrototype.Forest
