import CircleFullInterface
import CircleForestAssembly0156
import CircleForestAssembly0157
import CircleForestChunk0619
import CircleForestChunk0620
import CircleForestChunk0621
import CircleForestChunk0622
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_387489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_387489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387489 := by
  apply coveredState_split_literal (state := state_387489) 4
    state_387490 state_387553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387490
  · exact cover_387553
#print axioms cover_387489

def state_387467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_387467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387467 := by
  apply coveredState_split_literal (state := state_387467) 3
    state_387468 state_387489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387468
  · exact cover_387489
#print axioms cover_387467

def state_387461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_387461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387461 := by
  apply coveredState_split_literal (state := state_387461) 2
    state_387462 state_387467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387462
  · exact cover_387467
#print axioms cover_387461

def state_387335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_387335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387335 := by
  apply coveredState_split_literal (state := state_387335) 1
    state_387336 state_387461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387336
  · exact cover_387461
#print axioms cover_387335

def state_386969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_386969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386969 := by
  apply coveredState_split_literal (state := state_386969) 0
    state_386970 state_387335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386970
  · exact cover_387335
#print axioms cover_386969

def state_386071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_386071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386071 := by
  apply coveredState_split_literal (state := state_386071) 4
    state_386072 state_386969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386072
  · exact cover_386969
#print axioms cover_386071

def state_385295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_385295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385295 := by
  apply coveredState_split_literal (state := state_385295) 3
    state_385296 state_386071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385296
  · exact cover_386071
#print axioms cover_385295

def state_387556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_387556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387556 := by
  apply coveredState_split_literal (state := state_387556) 0
    state_387557 state_387604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387557
  · exact cover_387604
#print axioms cover_387556

def state_387632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_387632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387632 := by
  apply coveredState_split_literal (state := state_387632) 1
    state_387633 state_387646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387633
  · exact cover_387646
#print axioms cover_387632

def state_387631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_387631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387631 := by
  apply coveredState_split_literal (state := state_387631) 0
    state_387632 state_387705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387632
  · exact cover_387705
#print axioms cover_387631

def state_387555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_387555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387555 := by
  apply coveredState_split_literal (state := state_387555) 4
    state_387556 state_387631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387556
  · exact cover_387631
#print axioms cover_387555

def state_387865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 23)))
theorem cover_387865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387865 := by
  apply coveredState_split_literal (state := state_387865) 2
    state_387866 state_387891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387866
  · exact cover_387891
#print axioms cover_387865

def state_387817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 23)))
theorem cover_387817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387817 := by
  apply coveredState_split_literal (state := state_387817) 0
    state_387818 state_387865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387818
  · exact cover_387865
#print axioms cover_387817

def state_387803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 23)))
theorem cover_387803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387803 := by
  apply coveredState_split_literal (state := state_387803) 3
    state_387804 state_387817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387804
  · exact cover_387817
#print axioms cover_387803

def state_387787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 23)))
theorem cover_387787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387787 := by
  apply coveredState_split_literal (state := state_387787) 1
    state_387788 state_387803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387788
  · exact cover_387803
#print axioms cover_387787

def state_387757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 11)))
theorem cover_387757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387757 := by
  apply coveredState_split_literal (state := state_387757) 4
    state_387758 state_387787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387758
  · exact cover_387787
#print axioms cover_387757

def state_387756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 11)))
theorem cover_387756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387756 := by
  apply coveredState_split_literal (state := state_387756) 2
    state_387757 state_387930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387757
  · exact cover_387930
#print axioms cover_387756

def state_387755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 11)))
theorem cover_387755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387755 := by
  apply coveredState_split_literal (state := state_387755) 0
    state_387756 state_387955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387756
  · exact cover_387955
#print axioms cover_387755

def state_387747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 5)))
theorem cover_387747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387747 := by
  apply coveredState_split_literal (state := state_387747) 4
    state_387748 state_387755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387748
  · exact cover_387755
#print axioms cover_387747

def state_387743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
theorem cover_387743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387743 := by
  apply coveredState_split_literal (state := state_387743) 3
    state_387744 state_387747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387744
  · exact cover_387747
#print axioms cover_387743

def state_387742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_387742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387742 := by
  apply coveredState_split_literal (state := state_387742) 2
    state_387743 state_387984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387743
  · exact cover_387984
#print axioms cover_387742

def state_387734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_387734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387734 := by
  apply coveredState_split_literal (state := state_387734) 1
    state_387735 state_387742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387735
  · exact cover_387742
#print axioms cover_387734

def state_387733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_387733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387733 := by
  apply coveredState_split_literal (state := state_387733) 0
    state_387734 state_387995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387734
  · exact cover_387995
#print axioms cover_387733

def state_387727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_387727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387727 := by
  apply coveredState_split_literal (state := state_387727) 4
    state_387728 state_387733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387728
  · exact cover_387733
#print axioms cover_387727

def state_388050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 23)))
theorem cover_388050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388050 := by
  apply coveredState_split_literal (state := state_388050) 2
    state_388051 state_388070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388051
  · exact cover_388070
#print axioms cover_388050

def state_388046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 23)))
theorem cover_388046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388046 := by
  apply coveredState_split_literal (state := state_388046) 0
    state_388047 state_388050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388047
  · exact cover_388050
#print axioms cover_388046

def state_388045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_388045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388045 := by
  apply coveredState_split_literal (state := state_388045) 3
    state_388046 state_388115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388046
  · exact cover_388115
#print axioms cover_388045

def state_388039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
theorem cover_388039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388039 := by
  apply coveredState_split_literal (state := state_388039) 1
    state_388040 state_388045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388040
  · exact cover_388045
#print axioms cover_388039

def state_388037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 11)))
theorem cover_388037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388037 := by
  apply coveredState_split_literal (state := state_388037) 4
    state_388038 state_388039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388038
  · exact cover_388039
#print axioms cover_388037

def state_388036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_388036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388036 := by
  apply coveredState_split_literal (state := state_388036) 2
    state_388037 state_388116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388037
  · exact cover_388116
#print axioms cover_388036

def state_388035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_388035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388035 := by
  apply coveredState_split_literal (state := state_388035) 0
    state_388036 state_388139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388036
  · exact cover_388139
#print axioms cover_388035

def state_388034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_388034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388034 := by
  apply coveredState_split_literal (state := state_388034) 3
    state_388035 state_388186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388035
  · exact cover_388186
#print axioms cover_388034
end Mub6.Numerical.CircleFullPrototype.Forest
