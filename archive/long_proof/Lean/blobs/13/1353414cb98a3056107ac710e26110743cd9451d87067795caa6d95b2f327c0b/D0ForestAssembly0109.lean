import D0FullInterface
import D0ForestAssembly0108
import D0ForestChunk0434
import D0ForestChunk0435
import D0ForestChunk0436
import D0ForestChunk0437
import D0ForestChunk0438
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1041713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 8)))
theorem cover_1041713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041713 := by
  apply coveredState_split_literal (state := state_1041713) 1
    state_1041714 state_1041801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041714
  · exact cover_1041801
#print axioms cover_1041713

def state_1041712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 8)))
theorem cover_1041712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041712 := by
  apply coveredState_split_literal (state := state_1041712) 2
    state_1041713 state_1041820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041713
  · exact cover_1041820
#print axioms cover_1041712

def state_1041711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 8)))
theorem cover_1041711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041711 := by
  apply coveredState_split_literal (state := state_1041711) 0
    state_1041712 state_1041823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041712
  · exact cover_1041823
#print axioms cover_1041711

def state_1041703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1041703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041703 := by
  apply coveredState_split_literal (state := state_1041703) 3
    state_1041704 state_1041711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041704
  · exact cover_1041711
#print axioms cover_1041703

def state_1041702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1041702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041702 := by
  apply coveredState_split_literal (state := state_1041702) 4
    state_1041703 state_1041828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041703
  · exact cover_1041828
#print axioms cover_1041702

def state_1041701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1041701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041701 := by
  apply coveredState_split_literal (state := state_1041701) 1
    state_1041702 state_1041839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041702
  · exact cover_1041839
#print axioms cover_1041701

def state_1041860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 32) else (if j.val < 3 then 52 else (if j.val < 4 then 52 else 32)))
theorem cover_1041860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041860 := by
  apply coveredState_split_literal (state := state_1041860) 0
    state_1041861 state_1041916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041861
  · exact cover_1041916
#print axioms cover_1041860

def state_1041859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 32) else (if j.val < 3 then 52 else (if j.val < 4 then 52 else 16)))
theorem cover_1041859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041859 := by
  apply coveredState_split_literal (state := state_1041859) 4
    state_1041860 state_1041933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041860
  · exact cover_1041933
#print axioms cover_1041859

def state_1041858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 16) else (if j.val < 3 then 52 else (if j.val < 4 then 52 else 16)))
theorem cover_1041858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041858 := by
  apply coveredState_split_literal (state := state_1041858) 1
    state_1041859 state_1041956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041859
  · exact cover_1041956
#print axioms cover_1041858

def state_1041857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 16) else (if j.val < 3 then 52 else (if j.val < 4 then 26 else 16)))
theorem cover_1041857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041857 := by
  apply coveredState_split_literal (state := state_1041857) 3
    state_1041858 state_1042001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041858
  · exact cover_1042001
#print axioms cover_1041857

def state_1041856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 26 else 16)))
theorem cover_1041856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041856 := by
  apply coveredState_split_literal (state := state_1041856) 2
    state_1041857 state_1042002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041857
  · exact cover_1042002
#print axioms cover_1041856

def state_1041855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 26 else 16)))
theorem cover_1041855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041855 := by
  apply coveredState_split_literal (state := state_1041855) 0
    state_1041856 state_1042003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041856
  · exact cover_1042003
#print axioms cover_1041855

def state_1041854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 26 else 8)))
theorem cover_1041854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041854 := by
  apply coveredState_split_literal (state := state_1041854) 4
    state_1041855 state_1042026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041855
  · exact cover_1042026
#print axioms cover_1041854

def state_1042065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 26 else (if j.val < 4 then 26 else 8)))
theorem cover_1042065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042065 := by
  apply coveredState_split_literal (state := state_1042065) 4
    state_1042066 state_1042103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042066
  · exact cover_1042103
#print axioms cover_1042065

def state_1041853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 26 else 8)))
theorem cover_1041853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041853 := by
  apply coveredState_split_literal (state := state_1041853) 1
    state_1041854 state_1042065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041854
  · exact cover_1042065
#print axioms cover_1041853

def state_1041852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 13 else 8)))
theorem cover_1041852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041852 := by
  apply coveredState_split_literal (state := state_1041852) 3
    state_1041853 state_1042132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041853
  · exact cover_1042132
#print axioms cover_1041852

def state_1041851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 8)))
theorem cover_1041851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041851 := by
  apply coveredState_split_literal (state := state_1041851) 2
    state_1041852 state_1042147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041852
  · exact cover_1042147
#print axioms cover_1041851

def state_1041850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 8)))
theorem cover_1041850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041850 := by
  apply coveredState_split_literal (state := state_1041850) 0
    state_1041851 state_1042164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041851
  · exact cover_1042164
#print axioms cover_1041850

def state_1041849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
theorem cover_1041849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041849 := by
  apply coveredState_split_literal (state := state_1041849) 4
    state_1041850 state_1042205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041850
  · exact cover_1042205
#print axioms cover_1041849

def state_1042246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
theorem cover_1042246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042246 := by
  apply coveredState_split_literal (state := state_1042246) 4
    state_1042247 state_1042288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042247
  · exact cover_1042288
#print axioms cover_1042246

def state_1041848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
theorem cover_1041848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041848 := by
  apply coveredState_split_literal (state := state_1041848) 1
    state_1041849 state_1042246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041849
  · exact cover_1042246
#print axioms cover_1041848

def state_1041700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_1041700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041700 := by
  apply coveredState_split_literal (state := state_1041700) 3
    state_1041701 state_1041848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041701
  · exact cover_1041848
#print axioms cover_1041700

def state_1041500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1041500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041500 := by
  apply coveredState_split_literal (state := state_1041500) 2
    state_1041501 state_1041700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041501
  · exact cover_1041700
#print axioms cover_1041500

def state_1040976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1040976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040976 := by
  apply coveredState_split_literal (state := state_1040976) 0
    state_1040977 state_1041500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040977
  · exact cover_1041500
#print axioms cover_1040976

def state_1040975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1040975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040975 := by
  apply coveredState_split_literal (state := state_1040975) 4
    state_1040976 state_1042315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040976
  · exact cover_1042315
#print axioms cover_1040975

def state_1042346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_1042346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042346 := by
  apply coveredState_split_literal (state := state_1042346) 4
    state_1042347 state_1042400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042347
  · exact cover_1042400
#print axioms cover_1042346

def state_1040974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1040974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040974 := by
  apply coveredState_split_literal (state := state_1040974) 3
    state_1040975 state_1042346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040975
  · exact cover_1042346
#print axioms cover_1040974

def state_1042434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_1042434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042434 := by
  apply coveredState_split_literal (state := state_1042434) 4
    state_1042435 state_1042478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042435
  · exact cover_1042478
#print axioms cover_1042434

def state_1042433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1042433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042433 := by
  apply coveredState_split_literal (state := state_1042433) 3
    state_1042434 state_1042501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042434
  · exact cover_1042501
#print axioms cover_1042433

def state_1040973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1040973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040973 := by
  apply coveredState_split_literal (state := state_1040973) 2
    state_1040974 state_1042433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040974
  · exact cover_1042433
#print axioms cover_1040973

def state_1042525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1042525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042525 := by
  apply coveredState_split_literal (state := state_1042525) 3
    state_1042526 state_1042565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042526
  · exact cover_1042565
#print axioms cover_1042525

def state_1042524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1042524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042524 := by
  apply coveredState_split_literal (state := state_1042524) 2
    state_1042525 state_1042594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042525
  · exact cover_1042594
#print axioms cover_1042524
end Mub6.Numerical.CircleFullD0.Forest
