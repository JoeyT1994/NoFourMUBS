import CircleFullInterface
import CircleForestAssembly0091
import CircleForestChunk0370
import CircleForestChunk0371
import CircleForestChunk0372
import CircleForestChunk0373
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1025858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 24)))
theorem cover_1025858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025858 := by
  apply coveredState_split_literal (state := state_1025858) 3
    state_1025859 state_1026352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025859
  · exact cover_1026352
#print axioms cover_1025858

def state_1026477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 50)))
theorem cover_1026477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026477 := by
  apply coveredState_split_literal (state := state_1026477) 4
    state_1026478 state_1026527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026478
  · exact cover_1026527
#print axioms cover_1026477

def state_1026553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 100)))
theorem cover_1026553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026553 := by
  apply coveredState_split_literal (state := state_1026553) 3
    state_1026554 state_1026615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026554
  · exact cover_1026615
#print axioms cover_1026553

def state_1026552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 50)))
theorem cover_1026552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026552 := by
  apply coveredState_split_literal (state := state_1026552) 4
    state_1026553 state_1026624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026553
  · exact cover_1026624
#print axioms cover_1026552

def state_1026476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 50)))
theorem cover_1026476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026476 := by
  apply coveredState_split_literal (state := state_1026476) 0
    state_1026477 state_1026552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026477
  · exact cover_1026552
#print axioms cover_1026476

def state_1026442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 50)))
theorem cover_1026442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026442 := by
  apply coveredState_split_literal (state := state_1026442) 1
    state_1026443 state_1026476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026443
  · exact cover_1026476
#print axioms cover_1026442

def state_1026406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 50)))
theorem cover_1026406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026406 := by
  apply coveredState_split_literal (state := state_1026406) 2
    state_1026407 state_1026442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026407
  · exact cover_1026442
#print axioms cover_1026406

def state_1026405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 50)))
theorem cover_1026405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026405 := by
  apply coveredState_split_literal (state := state_1026405) 3
    state_1026406 state_1026663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026406
  · exact cover_1026663
#print axioms cover_1026405

def state_1026404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1026404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026404 := by
  apply coveredState_split_literal (state := state_1026404) 4
    state_1026405 state_1026670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026405
  · exact cover_1026670
#print axioms cover_1026404

def state_1026368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1026368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026368 := by
  apply coveredState_split_literal (state := state_1026368) 0
    state_1026369 state_1026404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026369
  · exact cover_1026404
#print axioms cover_1026368

def state_1026797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 104 else 101)))
theorem cover_1026797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026797 := by
  apply coveredState_split_literal (state := state_1026797) 1
    state_1026798 state_1026853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026798
  · exact cover_1026853
#print axioms cover_1026797

def state_1026763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 104 else 101)))
theorem cover_1026763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026763 := by
  apply coveredState_split_literal (state := state_1026763) 2
    state_1026764 state_1026797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026764
  · exact cover_1026797
#print axioms cover_1026763

def state_1026762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 101)))
theorem cover_1026762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026762 := by
  apply coveredState_split_literal (state := state_1026762) 3
    state_1026763 state_1026882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026763
  · exact cover_1026882
#print axioms cover_1026762

def state_1026738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 50)))
theorem cover_1026738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026738 := by
  apply coveredState_split_literal (state := state_1026738) 4
    state_1026739 state_1026762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026739
  · exact cover_1026762
#print axioms cover_1026738

def state_1026726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 50)))
theorem cover_1026726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026726 := by
  apply coveredState_split_literal (state := state_1026726) 0
    state_1026727 state_1026738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026727
  · exact cover_1026738
#print axioms cover_1026726

def state_1026725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 50)))
theorem cover_1026725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026725 := by
  apply coveredState_split_literal (state := state_1026725) 1
    state_1026726 state_1026885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026726
  · exact cover_1026885
#print axioms cover_1026725

def state_1026695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 50)))
theorem cover_1026695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026695 := by
  apply coveredState_split_literal (state := state_1026695) 2
    state_1026696 state_1026725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026696
  · exact cover_1026725
#print axioms cover_1026695

def state_1026694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 50)))
theorem cover_1026694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026694 := by
  apply coveredState_split_literal (state := state_1026694) 3
    state_1026695 state_1026912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026695
  · exact cover_1026912
#print axioms cover_1026694

def state_1026963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 104 else 102)))
theorem cover_1026963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026963 := by
  apply coveredState_split_literal (state := state_1026963) 1
    state_1026964 state_1026981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026964
  · exact cover_1026981
#print axioms cover_1026963

def state_1026957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 104 else 102)))
theorem cover_1026957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026957 := by
  apply coveredState_split_literal (state := state_1026957) 2
    state_1026958 state_1026963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026958
  · exact cover_1026963
#print axioms cover_1026957

def state_1026956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 102)))
theorem cover_1026956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026956 := by
  apply coveredState_split_literal (state := state_1026956) 3
    state_1026957 state_1027028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026957
  · exact cover_1027028
#print axioms cover_1026956

def state_1026955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
theorem cover_1026955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026955 := by
  apply coveredState_split_literal (state := state_1026955) 4
    state_1026956 state_1027029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026956
  · exact cover_1027029
#print axioms cover_1026955

def state_1026937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
theorem cover_1026937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026937 := by
  apply coveredState_split_literal (state := state_1026937) 0
    state_1026938 state_1026955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026938
  · exact cover_1026955
#print axioms cover_1026937

def state_1027035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 102)))
theorem cover_1027035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027035 := by
  apply coveredState_split_literal (state := state_1027035) 3
    state_1027036 state_1027099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027036
  · exact cover_1027099
#print axioms cover_1027035

def state_1027034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
theorem cover_1027034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027034 := by
  apply coveredState_split_literal (state := state_1027034) 4
    state_1027035 state_1027100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027035
  · exact cover_1027100
#print axioms cover_1027034

def state_1027030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
theorem cover_1027030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027030 := by
  apply coveredState_split_literal (state := state_1027030) 0
    state_1027031 state_1027034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027031
  · exact cover_1027034
#print axioms cover_1027030

def state_1026936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
theorem cover_1026936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026936 := by
  apply coveredState_split_literal (state := state_1026936) 1
    state_1026937 state_1027030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026937
  · exact cover_1027030
#print axioms cover_1026936

def state_1026914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 51)))
theorem cover_1026914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026914 := by
  apply coveredState_split_literal (state := state_1026914) 2
    state_1026915 state_1026936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026915
  · exact cover_1026936
#print axioms cover_1026914

def state_1026913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 51)))
theorem cover_1026913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026913 := by
  apply coveredState_split_literal (state := state_1026913) 3
    state_1026914 state_1027111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026914
  · exact cover_1027111
#print axioms cover_1026913

def state_1026693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1026693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026693 := by
  apply coveredState_split_literal (state := state_1026693) 4
    state_1026694 state_1026913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026694
  · exact cover_1026913
#print axioms cover_1026693

def state_1026685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1026685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026685 := by
  apply coveredState_split_literal (state := state_1026685) 0
    state_1026686 state_1026693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026686
  · exact cover_1026693
#print axioms cover_1026685

def state_1026367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
theorem cover_1026367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026367 := by
  apply coveredState_split_literal (state := state_1026367) 1
    state_1026368 state_1026685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026368
  · exact cover_1026685
#print axioms cover_1026367
end Mub6.Numerical.CircleFullD0.Forest
