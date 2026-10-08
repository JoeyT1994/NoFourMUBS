import CircleFullInterface
import CircleForestAssembly0032
import CircleForestChunk0128
import CircleForestChunk0130
import CircleForestChunk0131
import CircleForestChunk0132
import CircleForestChunk0133
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_51979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
theorem cover_51979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51979 := by
  apply coveredState_split_literal (state := state_51979) 0
    state_51980 state_52121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51980
  · exact cover_52121
#print axioms cover_51979

def state_52628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 42)))
theorem cover_52628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52628 := by
  apply coveredState_split_literal (state := state_52628) 2
    state_52629 state_52640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52629
  · exact cover_52640
#print axioms cover_52628

def state_52582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 42)))
theorem cover_52582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52582 := by
  apply coveredState_split_literal (state := state_52582) 1
    state_52583 state_52628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52583
  · exact cover_52628
#print axioms cover_52582

def state_52558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 42)))
theorem cover_52558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52558 := by
  apply coveredState_split_literal (state := state_52558) 0
    state_52559 state_52582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52559
  · exact cover_52582
#print axioms cover_52558

def state_52557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 21)))
theorem cover_52557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52557 := by
  apply coveredState_split_literal (state := state_52557) 4
    state_52558 state_52697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52558
  · exact cover_52697
#print axioms cover_52557

def state_52556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 21)))
theorem cover_52556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52556 := by
  apply coveredState_split_literal (state := state_52556) 3
    state_52557 state_52708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52557
  · exact cover_52708
#print axioms cover_52556

def state_52522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 21)))
theorem cover_52522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52522 := by
  apply coveredState_split_literal (state := state_52522) 1
    state_52523 state_52556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52523
  · exact cover_52556
#print axioms cover_52522

def state_52518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 21)))
theorem cover_52518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52518 := by
  apply coveredState_split_literal (state := state_52518) 0
    state_52519 state_52522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52519
  · exact cover_52522
#print axioms cover_52518

def state_51978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 10)))
theorem cover_51978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51978 := by
  apply coveredState_split_literal (state := state_51978) 4
    state_51979 state_52518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51979
  · exact cover_52518
#print axioms cover_51978

def state_52759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 20)))
theorem cover_52759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52759 := by
  apply coveredState_split_literal (state := state_52759) 1
    state_52760 state_52781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52760
  · exact cover_52781
#print axioms cover_52759

def state_52828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 20)))
theorem cover_52828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52828 := by
  apply coveredState_split_literal (state := state_52828) 4
    state_52829 state_52838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52829
  · exact cover_52838
#print axioms cover_52828

def state_52826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 20)))
theorem cover_52826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52826 := by
  apply coveredState_split_literal (state := state_52826) 1
    state_52827 state_52828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52827
  · exact cover_52828
#print axioms cover_52826

def state_52758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 20)))
theorem cover_52758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52758 := by
  apply coveredState_split_literal (state := state_52758) 0
    state_52759 state_52826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52759
  · exact cover_52826
#print axioms cover_52758

def state_52757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 21 else (if j.val < 4 then 48 else 20)))
theorem cover_52757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52757 := by
  apply coveredState_split_literal (state := state_52757) 2
    state_52758 state_52897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52758
  · exact cover_52897
#print axioms cover_52757

def state_52756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
theorem cover_52756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52756 := by
  apply coveredState_split_literal (state := state_52756) 3
    state_52757 state_52910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52757
  · exact cover_52910
#print axioms cover_52756

def state_52754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
theorem cover_52754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52754 := by
  apply coveredState_split_literal (state := state_52754) 1
    state_52755 state_52756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52755
  · exact cover_52756
#print axioms cover_52754

def state_52718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
theorem cover_52718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52718 := by
  apply coveredState_split_literal (state := state_52718) 0
    state_52719 state_52754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52719
  · exact cover_52754
#print axioms cover_52718

def state_52717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 10)))
theorem cover_52717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52717 := by
  apply coveredState_split_literal (state := state_52717) 4
    state_52718 state_52921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_52718
  · exact cover_52921
#print axioms cover_52717

def state_51977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_51977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51977 := by
  apply coveredState_split_literal (state := state_51977) 2
    state_51978 state_52717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51978
  · exact cover_52717
#print axioms cover_51977

def state_51976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_51976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51976 := by
  apply coveredState_split_literal (state := state_51976) 3
    state_51977 state_52982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51977
  · exact cover_52982
#print axioms cover_51976

def state_51966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_51966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51966 := by
  apply coveredState_split_literal (state := state_51966) 1
    state_51967 state_51976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51967
  · exact cover_51976
#print axioms cover_51966

def state_51954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_51954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51954 := by
  apply coveredState_split_literal (state := state_51954) 0
    state_51955 state_51966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51955
  · exact cover_51966
#print axioms cover_51954

def state_51953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
theorem cover_51953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51953 := by
  apply coveredState_split_literal (state := state_51953) 4
    state_51954 state_53023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51954
  · exact cover_53023
#print axioms cover_51953

def state_51952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_51952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51952 := by
  apply coveredState_split_literal (state := state_51952) 3
    state_51953 state_53048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51953
  · exact cover_53048
#print axioms cover_51952

def state_51951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_51951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51951 := by
  apply coveredState_split_literal (state := state_51951) 2
    state_51952 state_53063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51952
  · exact cover_53063
#print axioms cover_51951

def state_51695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_51695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51695 := by
  apply coveredState_split_literal (state := state_51695) 4
    state_51696 state_51951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51696
  · exact cover_51951
#print axioms cover_51695

def state_51694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_51694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51694 := by
  apply coveredState_split_literal (state := state_51694) 3
    state_51695 state_53092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51695
  · exact cover_53092
#print axioms cover_51694

def state_51370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_51370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51370 := by
  apply coveredState_split_literal (state := state_51370) 2
    state_51371 state_51694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51371
  · exact cover_51694
#print axioms cover_51370

def state_53230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 10)))
theorem cover_53230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53230 := by
  apply coveredState_split_literal (state := state_53230) 4
    state_53231 state_53272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53231
  · exact cover_53272
#print axioms cover_53230

def state_53174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_53174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53174 := by
  apply coveredState_split_literal (state := state_53174) 2
    state_53175 state_53230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53175
  · exact cover_53230
#print axioms cover_53174

def state_53173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_53173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53173 := by
  apply coveredState_split_literal (state := state_53173) 1
    state_53174 state_53299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53174
  · exact cover_53299
#print axioms cover_53173

def state_53172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_53172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53172 := by
  apply coveredState_split_literal (state := state_53172) 3
    state_53173 state_53306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53173
  · exact cover_53306
#print axioms cover_53172
end Mub6.Numerical.CircleFullPrototype.Forest
