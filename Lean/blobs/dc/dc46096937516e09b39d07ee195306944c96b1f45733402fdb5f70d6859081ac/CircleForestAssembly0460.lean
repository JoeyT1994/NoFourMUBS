import CircleFullInterface
import CircleForestAssembly0458
import CircleForestAssembly0459
import CircleForestChunk1797
import CircleForestChunk1805
import CircleForestChunk1806
import CircleForestChunk1807
import CircleForestChunk1808
import CircleForestChunk1809
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2305556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2305556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305556 := by
  apply coveredState_split_literal (state := state_2305556) 2
    state_2305557 state_2305838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305557
  · exact cover_2305838
#print axioms cover_2305556

def state_2304672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
theorem cover_2304672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304672 := by
  apply coveredState_split_literal (state := state_2304672) 1
    state_2304673 state_2305556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304673
  · exact cover_2305556
#print axioms cover_2304672

def state_2304592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_2304592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304592 := by
  apply coveredState_split_literal (state := state_2304592) 4
    state_2304593 state_2304672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304593
  · exact cover_2304672
#print axioms cover_2304592

def state_2304591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_2304591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304591 := by
  apply coveredState_split_literal (state := state_2304591) 0
    state_2304592 state_2306333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304592
  · exact cover_2306333
#print axioms cover_2304591

def state_2306437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 90)))
theorem cover_2306437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306437 := by
  apply coveredState_split_literal (state := state_2306437) 0
    state_2306438 state_2306485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306438
  · exact cover_2306485
#print axioms cover_2306437

def state_2306436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 45)))
theorem cover_2306436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306436 := by
  apply coveredState_split_literal (state := state_2306436) 4
    state_2306437 state_2306506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306437
  · exact cover_2306506
#print axioms cover_2306436

def state_2306408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 45)))
theorem cover_2306408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306408 := by
  apply coveredState_split_literal (state := state_2306408) 3
    state_2306409 state_2306436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306409
  · exact cover_2306436
#print axioms cover_2306408

def state_2306407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
theorem cover_2306407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306407 := by
  apply coveredState_split_literal (state := state_2306407) 2
    state_2306408 state_2306557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306408
  · exact cover_2306557
#print axioms cover_2306407

def state_2306399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
theorem cover_2306399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306399 := by
  apply coveredState_split_literal (state := state_2306399) 1
    state_2306400 state_2306407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306400
  · exact cover_2306407
#print axioms cover_2306399

def state_2306381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_2306381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306381 := by
  apply coveredState_split_literal (state := state_2306381) 4
    state_2306382 state_2306399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306382
  · exact cover_2306399
#print axioms cover_2306381

def state_2306380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_2306380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306380 := by
  apply coveredState_split_literal (state := state_2306380) 0
    state_2306381 state_2306574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306381
  · exact cover_2306574
#print axioms cover_2306380

def state_2304590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_2304590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304590 := by
  apply coveredState_split_literal (state := state_2304590) 2
    state_2304591 state_2306380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304591
  · exact cover_2306380
#print axioms cover_2304590

def state_2304552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2304552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304552 := by
  apply coveredState_split_literal (state := state_2304552) 3
    state_2304553 state_2304590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304553
  · exact cover_2304590
#print axioms cover_2304552

def state_2306611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_2306611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306611 := by
  apply coveredState_split_literal (state := state_2306611) 4
    state_2306612 state_2306627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306612
  · exact cover_2306627
#print axioms cover_2306611

def state_2306610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_2306610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306610 := by
  apply coveredState_split_literal (state := state_2306610) 0
    state_2306611 state_2306678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306611
  · exact cover_2306678
#print axioms cover_2306610

def state_2306720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
theorem cover_2306720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306720 := by
  apply coveredState_split_literal (state := state_2306720) 2
    state_2306721 state_2306778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306721
  · exact cover_2306778
#print axioms cover_2306720

def state_2306694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_2306694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306694 := by
  apply coveredState_split_literal (state := state_2306694) 4
    state_2306695 state_2306720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306695
  · exact cover_2306720
#print axioms cover_2306694

def state_2306693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_2306693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306693 := by
  apply coveredState_split_literal (state := state_2306693) 0
    state_2306694 state_2306833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306694
  · exact cover_2306833
#print axioms cover_2306693

def state_2306609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_2306609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306609 := by
  apply coveredState_split_literal (state := state_2306609) 2
    state_2306610 state_2306693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306610
  · exact cover_2306693
#print axioms cover_2306609

def state_2306593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2306593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306593 := by
  apply coveredState_split_literal (state := state_2306593) 3
    state_2306594 state_2306609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306594
  · exact cover_2306609
#print axioms cover_2306593

def state_2304551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_2304551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304551 := by
  apply coveredState_split_literal (state := state_2304551) 1
    state_2304552 state_2306593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304552
  · exact cover_2306593
#print axioms cover_2304551

def state_2306982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 92)))
theorem cover_2306982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306982 := by
  apply coveredState_split_literal (state := state_2306982) 1
    state_2306983 state_2307014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306983
  · exact cover_2307014
#print axioms cover_2306982

def state_2306981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 92)))
theorem cover_2306981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306981 := by
  apply coveredState_split_literal (state := state_2306981) 0
    state_2306982 state_2307067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306982
  · exact cover_2307067
#print axioms cover_2306981

def state_2306980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 46)))
theorem cover_2306980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306980 := by
  apply coveredState_split_literal (state := state_2306980) 4
    state_2306981 state_2307112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306981
  · exact cover_2307112
#print axioms cover_2306980

def state_2306922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 46)))
theorem cover_2306922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306922 := by
  apply coveredState_split_literal (state := state_2306922) 3
    state_2306923 state_2306980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306923
  · exact cover_2306980
#print axioms cover_2306922

def state_2306921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
theorem cover_2306921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306921 := by
  apply coveredState_split_literal (state := state_2306921) 2
    state_2306922 state_2307143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306922
  · exact cover_2307143
#print axioms cover_2306921

def state_2307212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 46)))
theorem cover_2307212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307212 := by
  apply coveredState_split_literal (state := state_2307212) 3
    state_2307213 state_2307244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307213
  · exact cover_2307244
#print axioms cover_2307212

def state_2307156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
theorem cover_2307156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307156 := by
  apply coveredState_split_literal (state := state_2307156) 2
    state_2307157 state_2307212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2307157
  · exact cover_2307212
#print axioms cover_2307156

def state_2306920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
theorem cover_2306920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306920 := by
  apply coveredState_split_literal (state := state_2306920) 1
    state_2306921 state_2307156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306921
  · exact cover_2307156
#print axioms cover_2306920

def state_2306919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
theorem cover_2306919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306919 := by
  apply coveredState_split_literal (state := state_2306919) 0
    state_2306920 state_2307303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306920
  · exact cover_2307303
#print axioms cover_2306919

def state_2306918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 23)))
theorem cover_2306918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306918 := by
  apply coveredState_split_literal (state := state_2306918) 4
    state_2306919 state_2307336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306919
  · exact cover_2307336
#print axioms cover_2306918

def state_2306917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 23)))
theorem cover_2306917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306917 := by
  apply coveredState_split_literal (state := state_2306917) 2
    state_2306918 state_2307383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2306918
  · exact cover_2307383
#print axioms cover_2306917
end Mub6.Numerical.CircleFullD0.Forest
