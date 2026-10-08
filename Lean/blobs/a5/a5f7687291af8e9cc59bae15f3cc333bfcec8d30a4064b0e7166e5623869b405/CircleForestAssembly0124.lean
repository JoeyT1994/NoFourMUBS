import CircleFullInterface
import CircleForestAssembly0117
import CircleForestAssembly0118
import CircleForestAssembly0123
import CircleForestChunk0465
import CircleForestChunk0489
import CircleForestChunk0490
import CircleForestChunk0491
import CircleForestChunk0492
import CircleForestChunk0493
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_272999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_272999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272999 := by
  apply coveredState_split_literal (state := state_272999) 3
    state_273000 state_273903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273000
  · exact cover_273903
#print axioms cover_272999

def state_278843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_278843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278843 := by
  apply coveredState_split_literal (state := state_278843) 1
    state_278844 state_278861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278844
  · exact cover_278861
#print axioms cover_278843

def state_278833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_278833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278833 := by
  apply coveredState_split_literal (state := state_278833) 0
    state_278834 state_278843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278834
  · exact cover_278843
#print axioms cover_278833

def state_278832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_278832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278832 := by
  apply coveredState_split_literal (state := state_278832) 4
    state_278833 state_278908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278833
  · exact cover_278908
#print axioms cover_278832

def state_278794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_278794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278794 := by
  apply coveredState_split_literal (state := state_278794) 3
    state_278795 state_278832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278795
  · exact cover_278832
#print axioms cover_278794

def state_272998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_272998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272998 := by
  apply coveredState_split_literal (state := state_272998) 2
    state_272999 state_278794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272999
  · exact cover_278794
#print axioms cover_272998

def state_272936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_272936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272936 := by
  apply coveredState_split_literal (state := state_272936) 1
    state_272937 state_272998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272937
  · exact cover_272998
#print axioms cover_272936

def state_272834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_272834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272834 := by
  apply coveredState_split_literal (state := state_272834) 0
    state_272835 state_272936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272835
  · exact cover_272936
#print axioms cover_272834

def state_278909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_278909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278909 := by
  apply coveredState_split_literal (state := state_278909) 0
    state_278910 state_278957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278910
  · exact cover_278957
#print axioms cover_278909

def state_272833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_272833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272833 := by
  apply coveredState_split_literal (state := state_272833) 4
    state_272834 state_278909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272834
  · exact cover_278909
#print axioms cover_272833

def state_272559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_272559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272559 := by
  apply coveredState_split_literal (state := state_272559) 3
    state_272560 state_272833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272560
  · exact cover_272833
#print axioms cover_272559

def state_279065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_279065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279065 := by
  apply coveredState_split_literal (state := state_279065) 4
    state_279066 state_279069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279066
  · exact cover_279069
#print axioms cover_279065

def state_279025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_279025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279025 := by
  apply coveredState_split_literal (state := state_279025) 3
    state_279026 state_279065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279026
  · exact cover_279065
#print axioms cover_279025

def state_279009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_279009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279009 := by
  apply coveredState_split_literal (state := state_279009) 2
    state_279010 state_279025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279010
  · exact cover_279025
#print axioms cover_279009

def state_278995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_278995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278995 := by
  apply coveredState_split_literal (state := state_278995) 1
    state_278996 state_279009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278996
  · exact cover_279009
#print axioms cover_278995

def state_279132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_279132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279132 := by
  apply coveredState_split_literal (state := state_279132) 1
    state_279133 state_279154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279133
  · exact cover_279154
#print axioms cover_279132

def state_278994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_278994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278994 := by
  apply coveredState_split_literal (state := state_278994) 0
    state_278995 state_279132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278995
  · exact cover_279132
#print axioms cover_278994

def state_279244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_279244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279244 := by
  apply coveredState_split_literal (state := state_279244) 2
    state_279245 state_279260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279245
  · exact cover_279260
#print axioms cover_279244

def state_279204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_279204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279204 := by
  apply coveredState_split_literal (state := state_279204) 1
    state_279205 state_279244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279205
  · exact cover_279244
#print axioms cover_279204

def state_279320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_279320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279320 := by
  apply coveredState_split_literal (state := state_279320) 2
    state_279321 state_279384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279321
  · exact cover_279384
#print axioms cover_279320

def state_279319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_279319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279319 := by
  apply coveredState_split_literal (state := state_279319) 1
    state_279320 state_279401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279320
  · exact cover_279401
#print axioms cover_279319

def state_279203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_279203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279203 := by
  apply coveredState_split_literal (state := state_279203) 0
    state_279204 state_279319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279204
  · exact cover_279319
#print axioms cover_279203

def state_278993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_278993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278993 := by
  apply coveredState_split_literal (state := state_278993) 4
    state_278994 state_279203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278994
  · exact cover_279203
#print axioms cover_278993

def state_279431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_279431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279431 := by
  apply coveredState_split_literal (state := state_279431) 0
    state_279432 state_279479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279432
  · exact cover_279479
#print axioms cover_279431

def state_279514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_279514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279514 := by
  apply coveredState_split_literal (state := state_279514) 0
    state_279515 state_279570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279515
  · exact cover_279570
#print axioms cover_279514

def state_279430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_279430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279430 := by
  apply coveredState_split_literal (state := state_279430) 4
    state_279431 state_279514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279431
  · exact cover_279514
#print axioms cover_279430

def state_278992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_278992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278992 := by
  apply coveredState_split_literal (state := state_278992) 3
    state_278993 state_279430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_278993
  · exact cover_279430
#print axioms cover_278992

def state_272558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_272558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272558 := by
  apply coveredState_split_literal (state := state_272558) 2
    state_272559 state_278992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272559
  · exact cover_278992
#print axioms cover_272558

def state_279633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_279633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279633 := by
  apply coveredState_split_literal (state := state_279633) 0
    state_279634 state_279665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279634
  · exact cover_279665
#print axioms cover_279633

def state_279595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_279595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279595 := by
  apply coveredState_split_literal (state := state_279595) 4
    state_279596 state_279633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279596
  · exact cover_279633
#print axioms cover_279595

def state_279722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_279722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279722 := by
  apply coveredState_split_literal (state := state_279722) 3
    state_279723 state_279774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279723
  · exact cover_279774
#print axioms cover_279722

def state_279721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_279721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279721 := by
  apply coveredState_split_literal (state := state_279721) 2
    state_279722 state_279831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279722
  · exact cover_279831
#print axioms cover_279721
end Mub6.Numerical.CircleFullPrototype.Forest
