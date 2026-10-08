import CircleFullInterface
import CircleForestAssembly0463
import CircleForestChunk1820
import CircleForestChunk1821
import CircleForestChunk1822
import CircleForestChunk1823
import CircleForestChunk1824
import CircleForestChunk1825
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2309629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 22)))
theorem cover_2309629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309629 := by
  apply coveredState_split_literal (state := state_2309629) 4
    state_2309630 state_2309741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309630
  · exact cover_2309741
#print axioms cover_2309629

def state_2310207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 45)))
theorem cover_2310207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310207 := by
  apply coveredState_split_literal (state := state_2310207) 3
    state_2310208 state_2310247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310208
  · exact cover_2310247
#print axioms cover_2310207

def state_2310299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 45)))
theorem cover_2310299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310299 := by
  apply coveredState_split_literal (state := state_2310299) 0
    state_2310300 state_2310363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310300
  · exact cover_2310363
#print axioms cover_2310299

def state_2310289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 45)))
theorem cover_2310289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310289 := by
  apply coveredState_split_literal (state := state_2310289) 2
    state_2310290 state_2310299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310290
  · exact cover_2310299
#print axioms cover_2310289

def state_2310288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 45)))
theorem cover_2310288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310288 := by
  apply coveredState_split_literal (state := state_2310288) 3
    state_2310289 state_2310370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310289
  · exact cover_2310370
#print axioms cover_2310288

def state_2310206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 45)))
theorem cover_2310206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310206 := by
  apply coveredState_split_literal (state := state_2310206) 1
    state_2310207 state_2310288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310207
  · exact cover_2310288
#print axioms cover_2310206

def state_2310150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 22)))
theorem cover_2310150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310150 := by
  apply coveredState_split_literal (state := state_2310150) 4
    state_2310151 state_2310206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310151
  · exact cover_2310206
#print axioms cover_2310150

def state_2309628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 22)))
theorem cover_2309628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309628 := by
  apply coveredState_split_literal (state := state_2309628) 0
    state_2309629 state_2310150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309629
  · exact cover_2310150
#print axioms cover_2309628

def state_2310443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 22)))
theorem cover_2310443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310443 := by
  apply coveredState_split_literal (state := state_2310443) 4
    state_2310444 state_2310471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310444
  · exact cover_2310471
#print axioms cover_2310443

def state_2310431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 22)))
theorem cover_2310431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310431 := by
  apply coveredState_split_literal (state := state_2310431) 0
    state_2310432 state_2310443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310432
  · exact cover_2310443
#print axioms cover_2310431

def state_2309627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 22)))
theorem cover_2309627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309627 := by
  apply coveredState_split_literal (state := state_2309627) 3
    state_2309628 state_2310431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309628
  · exact cover_2310431
#print axioms cover_2309627

def state_2310523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 44)))
theorem cover_2310523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310523 := by
  apply coveredState_split_literal (state := state_2310523) 2
    state_2310524 state_2310579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310524
  · exact cover_2310579
#print axioms cover_2310523

def state_2310517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 44)))
theorem cover_2310517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310517 := by
  apply coveredState_split_literal (state := state_2310517) 1
    state_2310518 state_2310523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310518
  · exact cover_2310523
#print axioms cover_2310517

def state_2310609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 90)))
theorem cover_2310609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310609 := by
  apply coveredState_split_literal (state := state_2310609) 0
    state_2310610 state_2310619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310610
  · exact cover_2310619
#print axioms cover_2310609

def state_2310608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 45)))
theorem cover_2310608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310608 := by
  apply coveredState_split_literal (state := state_2310608) 4
    state_2310609 state_2310678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310609
  · exact cover_2310678
#print axioms cover_2310608

def state_2310607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 28 else 45)))
theorem cover_2310607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310607 := by
  apply coveredState_split_literal (state := state_2310607) 3
    state_2310608 state_2310697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310608
  · exact cover_2310697
#print axioms cover_2310607

def state_2310606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 45)))
theorem cover_2310606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310606 := by
  apply coveredState_split_literal (state := state_2310606) 2
    state_2310607 state_2310706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310607
  · exact cover_2310706
#print axioms cover_2310606

def state_2310592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 45)))
theorem cover_2310592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310592 := by
  apply coveredState_split_literal (state := state_2310592) 1
    state_2310593 state_2310606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310593
  · exact cover_2310606
#print axioms cover_2310592

def state_2310516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_2310516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310516 := by
  apply coveredState_split_literal (state := state_2310516) 4
    state_2310517 state_2310592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310517
  · exact cover_2310592
#print axioms cover_2310516

def state_2310840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 45)))
theorem cover_2310840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310840 := by
  apply coveredState_split_literal (state := state_2310840) 0
    state_2310841 state_2310880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310841
  · exact cover_2310880
#print axioms cover_2310840

def state_2310784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 28 else 45)))
theorem cover_2310784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310784 := by
  apply coveredState_split_literal (state := state_2310784) 3
    state_2310785 state_2310840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310785
  · exact cover_2310840
#print axioms cover_2310784

def state_2310783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 45)))
theorem cover_2310783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310783 := by
  apply coveredState_split_literal (state := state_2310783) 2
    state_2310784 state_2310907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310784
  · exact cover_2310907
#print axioms cover_2310783

def state_2310773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 45)))
theorem cover_2310773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310773 := by
  apply coveredState_split_literal (state := state_2310773) 1
    state_2310774 state_2310783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310774
  · exact cover_2310783
#print axioms cover_2310773

def state_2310737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_2310737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310737 := by
  apply coveredState_split_literal (state := state_2310737) 4
    state_2310738 state_2310773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310738
  · exact cover_2310773
#print axioms cover_2310737

def state_2310515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_2310515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310515 := by
  apply coveredState_split_literal (state := state_2310515) 0
    state_2310516 state_2310737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310516
  · exact cover_2310737
#print axioms cover_2310515

def state_2310936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
theorem cover_2310936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310936 := by
  apply coveredState_split_literal (state := state_2310936) 0
    state_2310937 state_2310940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310937
  · exact cover_2310940
#print axioms cover_2310936

def state_2310514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 22)))
theorem cover_2310514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310514 := by
  apply coveredState_split_literal (state := state_2310514) 3
    state_2310515 state_2310936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2310515
  · exact cover_2310936
#print axioms cover_2310514

def state_2309626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_2309626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309626 := by
  apply coveredState_split_literal (state := state_2309626) 2
    state_2309627 state_2310514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2309627
  · exact cover_2310514
#print axioms cover_2309626

def state_2311003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 22)))
theorem cover_2311003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311003 := by
  apply coveredState_split_literal (state := state_2311003) 0
    state_2311004 state_2311053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311004
  · exact cover_2311053
#print axioms cover_2311003

def state_2311002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 22)))
theorem cover_2311002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311002 := by
  apply coveredState_split_literal (state := state_2311002) 3
    state_2311003 state_2311114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311003
  · exact cover_2311114
#print axioms cover_2311002

def state_2311176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 28 else 44)))
theorem cover_2311176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311176 := by
  apply coveredState_split_literal (state := state_2311176) 3
    state_2311177 state_2311206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311177
  · exact cover_2311206
#print axioms cover_2311176

def state_2311132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 44)))
theorem cover_2311132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311132 := by
  apply coveredState_split_literal (state := state_2311132) 2
    state_2311133 state_2311176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311133
  · exact cover_2311176
#print axioms cover_2311132
end Mub6.Numerical.CircleFullD0.Forest
