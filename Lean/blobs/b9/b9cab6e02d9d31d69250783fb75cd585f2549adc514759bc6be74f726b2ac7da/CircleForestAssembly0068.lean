import CircleFullInterface
import CircleForestAssembly0067
import CircleForestChunk0272
import CircleForestChunk0273
import CircleForestChunk0274
import CircleForestChunk0275
import CircleForestChunk0276
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1002832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1002832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002832 := by
  apply coveredState_split_literal (state := state_1002832) 4
    state_1002833 state_1002898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002833
  · exact cover_1002898
#print axioms cover_1002832

def state_1002831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1002831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002831 := by
  apply coveredState_split_literal (state := state_1002831) 0
    state_1002832 state_1002911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002832
  · exact cover_1002911
#print axioms cover_1002831

def state_1002916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 88)))
theorem cover_1002916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002916 := by
  apply coveredState_split_literal (state := state_1002916) 2
    state_1002917 state_1002978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002917
  · exact cover_1002978
#print axioms cover_1002916

def state_1002915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 88)))
theorem cover_1002915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002915 := by
  apply coveredState_split_literal (state := state_1002915) 1
    state_1002916 state_1002983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002916
  · exact cover_1002983
#print axioms cover_1002915

def state_1003005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 176)))
theorem cover_1003005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003005 := by
  apply coveredState_split_literal (state := state_1003005) 2
    state_1003006 state_1003021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003006
  · exact cover_1003021
#print axioms cover_1003005

def state_1003004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 176)))
theorem cover_1003004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003004 := by
  apply coveredState_split_literal (state := state_1003004) 1
    state_1003005 state_1003072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003005
  · exact cover_1003072
#print axioms cover_1003004

def state_1003002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 176)))
theorem cover_1003002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003002 := by
  apply coveredState_split_literal (state := state_1003002) 3
    state_1003003 state_1003004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003003
  · exact cover_1003004
#print axioms cover_1003002

def state_1003092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 144 else (if j.val < 4 then 210 else 177)))
theorem cover_1003092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003092 := by
  apply coveredState_split_literal (state := state_1003092) 0
    state_1003093 state_1003144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003093
  · exact cover_1003144
#print axioms cover_1003092

def state_1003091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 177)))
theorem cover_1003091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003091 := by
  apply coveredState_split_literal (state := state_1003091) 2
    state_1003092 state_1003159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003092
  · exact cover_1003159
#print axioms cover_1003091

def state_1003090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 177)))
theorem cover_1003090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003090 := by
  apply coveredState_split_literal (state := state_1003090) 1
    state_1003091 state_1003172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003091
  · exact cover_1003172
#print axioms cover_1003090

def state_1003223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 177)))
theorem cover_1003223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003223 := by
  apply coveredState_split_literal (state := state_1003223) 1
    state_1003224 state_1003267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003224
  · exact cover_1003267
#print axioms cover_1003223

def state_1003089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 177)))
theorem cover_1003089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003089 := by
  apply coveredState_split_literal (state := state_1003089) 3
    state_1003090 state_1003223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003090
  · exact cover_1003223
#print axioms cover_1003089

def state_1003001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
theorem cover_1003001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003001 := by
  apply coveredState_split_literal (state := state_1003001) 4
    state_1003002 state_1003089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003002
  · exact cover_1003089
#print axioms cover_1003001

def state_1003000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
theorem cover_1003000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003000 := by
  apply coveredState_split_literal (state := state_1003000) 0
    state_1003001 state_1003300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003001
  · exact cover_1003300
#print axioms cover_1003000

def state_1002999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 88)))
theorem cover_1002999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002999 := by
  apply coveredState_split_literal (state := state_1002999) 2
    state_1003000 state_1003347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003000
  · exact cover_1003347
#print axioms cover_1002999

def state_1002998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 88)))
theorem cover_1002998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002998 := by
  apply coveredState_split_literal (state := state_1002998) 1
    state_1002999 state_1003406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002999
  · exact cover_1003406
#print axioms cover_1002998

def state_1002914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 88)))
theorem cover_1002914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002914 := by
  apply coveredState_split_literal (state := state_1002914) 3
    state_1002915 state_1002998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002915
  · exact cover_1002998
#print axioms cover_1002914

def state_1003494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 89)))
theorem cover_1003494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003494 := by
  apply coveredState_split_literal (state := state_1003494) 2
    state_1003495 state_1003558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003495
  · exact cover_1003558
#print axioms cover_1003494

def state_1003452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 89)))
theorem cover_1003452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003452 := by
  apply coveredState_split_literal (state := state_1003452) 1
    state_1003453 state_1003494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003453
  · exact cover_1003494
#print axioms cover_1003452

def state_1003572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 178)))
theorem cover_1003572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003572 := by
  apply coveredState_split_literal (state := state_1003572) 1
    state_1003573 state_1003590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003573
  · exact cover_1003590
#print axioms cover_1003572

def state_1003571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 178)))
theorem cover_1003571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003571 := by
  apply coveredState_split_literal (state := state_1003571) 3
    state_1003572 state_1003643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003572
  · exact cover_1003643
#print axioms cover_1003571

def state_1003570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 89)))
theorem cover_1003570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003570 := by
  apply coveredState_split_literal (state := state_1003570) 4
    state_1003571 state_1003672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003571
  · exact cover_1003672
#print axioms cover_1003570

def state_1003569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 89)))
theorem cover_1003569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003569 := by
  apply coveredState_split_literal (state := state_1003569) 0
    state_1003570 state_1003695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003570
  · exact cover_1003695
#print axioms cover_1003569

def state_1003568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 89)))
theorem cover_1003568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003568 := by
  apply coveredState_split_literal (state := state_1003568) 2
    state_1003569 state_1003706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003569
  · exact cover_1003706
#print axioms cover_1003568

def state_1003726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 89)))
theorem cover_1003726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003726 := by
  apply coveredState_split_literal (state := state_1003726) 0
    state_1003727 state_1003780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003727
  · exact cover_1003780
#print axioms cover_1003726

def state_1003725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 89)))
theorem cover_1003725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003725 := by
  apply coveredState_split_literal (state := state_1003725) 2
    state_1003726 state_1003803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003726
  · exact cover_1003803
#print axioms cover_1003725

def state_1003567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 89)))
theorem cover_1003567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003567 := by
  apply coveredState_split_literal (state := state_1003567) 1
    state_1003568 state_1003725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003568
  · exact cover_1003725
#print axioms cover_1003567

def state_1003451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 89)))
theorem cover_1003451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003451 := by
  apply coveredState_split_literal (state := state_1003451) 3
    state_1003452 state_1003567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003452
  · exact cover_1003567
#print axioms cover_1003451

def state_1002913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1002913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002913 := by
  apply coveredState_split_literal (state := state_1002913) 4
    state_1002914 state_1003451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002914
  · exact cover_1003451
#print axioms cover_1002913

def state_1002912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1002912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002912 := by
  apply coveredState_split_literal (state := state_1002912) 0
    state_1002913 state_1003862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002913
  · exact cover_1003862
#print axioms cover_1002912

def state_1002830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1002830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002830 := by
  apply coveredState_split_literal (state := state_1002830) 1
    state_1002831 state_1002912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002831
  · exact cover_1002912
#print axioms cover_1002830

def state_1002829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 44)))
theorem cover_1002829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002829 := by
  apply coveredState_split_literal (state := state_1002829) 2
    state_1002830 state_1003899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002830
  · exact cover_1003899
#print axioms cover_1002829
end Mub6.Numerical.CircleFullD0.Forest
