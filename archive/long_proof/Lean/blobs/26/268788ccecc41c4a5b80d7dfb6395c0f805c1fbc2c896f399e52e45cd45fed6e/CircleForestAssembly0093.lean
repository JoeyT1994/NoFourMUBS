import CircleFullInterface
import CircleForestAssembly0092
import CircleForestChunk0372
import CircleForestChunk0373
import CircleForestChunk0374
import CircleForestChunk0375
import CircleForestChunk0376
import CircleForestChunk0377
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_164955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_164955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164955 := by
  apply coveredState_split_literal (state := state_164955) 0
    state_164956 state_165011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164956
  · exact cover_165011
#print axioms cover_164955

def state_164919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_164919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164919 := by
  apply coveredState_split_literal (state := state_164919) 4
    state_164920 state_164955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164920
  · exact cover_164955
#print axioms cover_164919

def state_164889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_164889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164889 := by
  apply coveredState_split_literal (state := state_164889) 3
    state_164890 state_164919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164890
  · exact cover_164919
#print axioms cover_164889

def state_164879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_164879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164879 := by
  apply coveredState_split_literal (state := state_164879) 2
    state_164880 state_164889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164880
  · exact cover_164889
#print axioms cover_164879

def state_164878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_164878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164878 := by
  apply coveredState_split_literal (state := state_164878) 1
    state_164879 state_165028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164879
  · exact cover_165028
#print axioms cover_164878

def state_164490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_164490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164490 := by
  apply coveredState_split_literal (state := state_164490) 0
    state_164491 state_164878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164491
  · exact cover_164878
#print axioms cover_164490

def state_164414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_164414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164414 := by
  apply coveredState_split_literal (state := state_164414) 4
    state_164415 state_164490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164415
  · exact cover_164490
#print axioms cover_164414

def state_165286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_165286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165286 := by
  apply coveredState_split_literal (state := state_165286) 3
    state_165287 state_165332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165287
  · exact cover_165332
#print axioms cover_165286

def state_165236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_165236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165236 := by
  apply coveredState_split_literal (state := state_165236) 2
    state_165237 state_165286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165237
  · exact cover_165286
#print axioms cover_165236

def state_165186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_165186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165186 := by
  apply coveredState_split_literal (state := state_165186) 0
    state_165187 state_165236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165187
  · exact cover_165236
#print axioms cover_165186

def state_165146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_165146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165146 := by
  apply coveredState_split_literal (state := state_165146) 4
    state_165147 state_165186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165147
  · exact cover_165186
#print axioms cover_165146

def state_165132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_165132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165132 := by
  apply coveredState_split_literal (state := state_165132) 1
    state_165133 state_165146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165133
  · exact cover_165146
#print axioms cover_165132

def state_165124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_165124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165124 := by
  apply coveredState_split_literal (state := state_165124) 4
    state_165125 state_165132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165125
  · exact cover_165132
#print axioms cover_165124

def state_165066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_165066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165066 := by
  apply coveredState_split_literal (state := state_165066) 3
    state_165067 state_165124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165067
  · exact cover_165124
#print axioms cover_165066

def state_165065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_165065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165065 := by
  apply coveredState_split_literal (state := state_165065) 2
    state_165066 state_165377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165066
  · exact cover_165377
#print axioms cover_165065

def state_165051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_165051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165051 := by
  apply coveredState_split_literal (state := state_165051) 1
    state_165052 state_165065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165052
  · exact cover_165065
#print axioms cover_165051

def state_165521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_165521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165521 := by
  apply coveredState_split_literal (state := state_165521) 0
    state_165522 state_165577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165522
  · exact cover_165577
#print axioms cover_165521

def state_165503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_165503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165503 := by
  apply coveredState_split_literal (state := state_165503) 4
    state_165504 state_165521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165504
  · exact cover_165521
#print axioms cover_165503

def state_165453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_165453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165453 := by
  apply coveredState_split_literal (state := state_165453) 3
    state_165454 state_165503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165454
  · exact cover_165503
#print axioms cover_165453

def state_165452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_165452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165452 := by
  apply coveredState_split_literal (state := state_165452) 2
    state_165453 state_165594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165453
  · exact cover_165594
#print axioms cover_165452

def state_165436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_165436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165436 := by
  apply coveredState_split_literal (state := state_165436) 1
    state_165437 state_165452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165437
  · exact cover_165452
#print axioms cover_165436

def state_165050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_165050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165050 := by
  apply coveredState_split_literal (state := state_165050) 0
    state_165051 state_165436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165051
  · exact cover_165436
#print axioms cover_165050

def state_165705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_165705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165705 := by
  apply coveredState_split_literal (state := state_165705) 4
    state_165706 state_165729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165706
  · exact cover_165729
#print axioms cover_165705

def state_165790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_165790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165790 := by
  apply coveredState_split_literal (state := state_165790) 4
    state_165791 state_165854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165791
  · exact cover_165854
#print axioms cover_165790

def state_165704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_165704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165704 := by
  apply coveredState_split_literal (state := state_165704) 3
    state_165705 state_165790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165705
  · exact cover_165790
#print axioms cover_165704

def state_165662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_165662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165662 := by
  apply coveredState_split_literal (state := state_165662) 2
    state_165663 state_165704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165663
  · exact cover_165704
#print axioms cover_165662

def state_165612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_165612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165612 := by
  apply coveredState_split_literal (state := state_165612) 1
    state_165613 state_165662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165613
  · exact cover_165662
#print axioms cover_165612

def state_165915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_165915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165915 := by
  apply coveredState_split_literal (state := state_165915) 2
    state_165916 state_165953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165916
  · exact cover_165953
#print axioms cover_165915

def state_165873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_165873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165873 := by
  apply coveredState_split_literal (state := state_165873) 1
    state_165874 state_165915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165874
  · exact cover_165915
#print axioms cover_165873

def state_165611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_165611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165611 := by
  apply coveredState_split_literal (state := state_165611) 0
    state_165612 state_165873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165612
  · exact cover_165873
#print axioms cover_165611

def state_165049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_165049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165049 := by
  apply coveredState_split_literal (state := state_165049) 4
    state_165050 state_165611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_165050
  · exact cover_165611
#print axioms cover_165049

def state_164413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_164413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164413 := by
  apply coveredState_split_literal (state := state_164413) 3
    state_164414 state_165049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164414
  · exact cover_165049
#print axioms cover_164413
end Mub6.Numerical.CircleFullPrototype.Forest
