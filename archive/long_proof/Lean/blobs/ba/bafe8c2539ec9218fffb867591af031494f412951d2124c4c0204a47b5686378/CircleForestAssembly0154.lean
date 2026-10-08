import CircleFullInterface
import CircleForestAssembly0150
import CircleForestAssembly0152
import CircleForestAssembly0153
import CircleForestChunk0602
import CircleForestChunk0603
import CircleForestChunk0604
import CircleForestChunk0605
import CircleForestChunk0606
import CircleForestChunk0607
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_383514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_383514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383514 := by
  apply coveredState_split_literal (state := state_383514) 0
    state_383515 state_383530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383515
  · exact cover_383530
#print axioms cover_383514

def state_383512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_383512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383512 := by
  apply coveredState_split_literal (state := state_383512) 4
    state_383513 state_383514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383513
  · exact cover_383514
#print axioms cover_383512

def state_383488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_383488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383488 := by
  apply coveredState_split_literal (state := state_383488) 3
    state_383489 state_383512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383489
  · exact cover_383512
#print axioms cover_383488

def state_383364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_383364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383364 := by
  apply coveredState_split_literal (state := state_383364) 2
    state_383365 state_383488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383365
  · exact cover_383488
#print axioms cover_383364

def state_382798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_382798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382798 := by
  apply coveredState_split_literal (state := state_382798) 1
    state_382799 state_383364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382799
  · exact cover_383364
#print axioms cover_382798

def state_382702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_382702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382702 := by
  apply coveredState_split_literal (state := state_382702) 0
    state_382703 state_382798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382703
  · exact cover_382798
#print axioms cover_382702

def state_383694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_383694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383694 := by
  apply coveredState_split_literal (state := state_383694) 3
    state_383695 state_383710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383695
  · exact cover_383710
#print axioms cover_383694

def state_383693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_383693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383693 := by
  apply coveredState_split_literal (state := state_383693) 2
    state_383694 state_383763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383694
  · exact cover_383763
#print axioms cover_383693

def state_383671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_383671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383671 := by
  apply coveredState_split_literal (state := state_383671) 1
    state_383672 state_383693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383672
  · exact cover_383693
#print axioms cover_383671

def state_383641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_383641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383641 := by
  apply coveredState_split_literal (state := state_383641) 0
    state_383642 state_383671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383642
  · exact cover_383671
#print axioms cover_383641

def state_383640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_383640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383640 := by
  apply coveredState_split_literal (state := state_383640) 4
    state_383641 state_383802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383641
  · exact cover_383802
#print axioms cover_383640

def state_383639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_383639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383639 := by
  apply coveredState_split_literal (state := state_383639) 3
    state_383640 state_383813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383640
  · exact cover_383813
#print axioms cover_383639

def state_383851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_383851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383851 := by
  apply coveredState_split_literal (state := state_383851) 4
    state_383852 state_383911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383852
  · exact cover_383911
#print axioms cover_383851

def state_383850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_383850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383850 := by
  apply coveredState_split_literal (state := state_383850) 3
    state_383851 state_383924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383851
  · exact cover_383924
#print axioms cover_383850

def state_383638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_383638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383638 := by
  apply coveredState_split_literal (state := state_383638) 2
    state_383639 state_383850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383639
  · exact cover_383850
#print axioms cover_383638

def state_383946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_383946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383946 := by
  apply coveredState_split_literal (state := state_383946) 3
    state_383947 state_384002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383947
  · exact cover_384002
#print axioms cover_383946

def state_384061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_384061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384061 := by
  apply coveredState_split_literal (state := state_384061) 3
    state_384062 state_384109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384062
  · exact cover_384109
#print axioms cover_384061

def state_383945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_383945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383945 := by
  apply coveredState_split_literal (state := state_383945) 2
    state_383946 state_384061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383946
  · exact cover_384061
#print axioms cover_383945

def state_383637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_383637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383637 := by
  apply coveredState_split_literal (state := state_383637) 1
    state_383638 state_383945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383638
  · exact cover_383945
#print axioms cover_383637

def state_383597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_383597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383597 := by
  apply coveredState_split_literal (state := state_383597) 0
    state_383598 state_383637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383598
  · exact cover_383637
#print axioms cover_383597

def state_382701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_382701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382701 := by
  apply coveredState_split_literal (state := state_382701) 4
    state_382702 state_383597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382702
  · exact cover_383597
#print axioms cover_382701

def state_381925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_381925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381925 := by
  apply coveredState_split_literal (state := state_381925) 3
    state_381926 state_382701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381926
  · exact cover_382701
#print axioms cover_381925

def state_379597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_379597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379597 := by
  apply coveredState_split_literal (state := state_379597) 2
    state_379598 state_381925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379598
  · exact cover_381925
#print axioms cover_379597

def state_371973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_371973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371973 := by
  apply coveredState_split_literal (state := state_371973) 1
    state_371974 state_379597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371974
  · exact cover_379597
#print axioms cover_371973

def state_384167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_384167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384167 := by
  apply coveredState_split_literal (state := state_384167) 1
    state_384168 state_384179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384168
  · exact cover_384179
#print axioms cover_384167

def state_384166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_384166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384166 := by
  apply coveredState_split_literal (state := state_384166) 0
    state_384167 state_384234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384167
  · exact cover_384234
#print axioms cover_384166

def state_384259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_384259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384259 := by
  apply coveredState_split_literal (state := state_384259) 0
    state_384260 state_384313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384260
  · exact cover_384313
#print axioms cover_384259

def state_384165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_384165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384165 := by
  apply coveredState_split_literal (state := state_384165) 4
    state_384166 state_384259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384166
  · exact cover_384259
#print axioms cover_384165

def state_384333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_384333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384333 := by
  apply coveredState_split_literal (state := state_384333) 0
    state_384334 state_384385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384334
  · exact cover_384385
#print axioms cover_384333

def state_384446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_384446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384446 := by
  apply coveredState_split_literal (state := state_384446) 1
    state_384447 state_384510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384447
  · exact cover_384510
#print axioms cover_384446

def state_384445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_384445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384445 := by
  apply coveredState_split_literal (state := state_384445) 3
    state_384446 state_384519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384446
  · exact cover_384519
#print axioms cover_384445

def state_384444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_384444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384444 := by
  apply coveredState_split_literal (state := state_384444) 0
    state_384445 state_384532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384445
  · exact cover_384532
#print axioms cover_384444
end Mub6.Numerical.CircleFullPrototype.Forest
