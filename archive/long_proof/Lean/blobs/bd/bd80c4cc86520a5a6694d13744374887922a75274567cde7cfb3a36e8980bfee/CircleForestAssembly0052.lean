import CircleFullInterface
import CircleForestAssembly0051
import CircleForestChunk0205
import CircleForestChunk0206
import CircleForestChunk0207
import CircleForestChunk0208
import CircleForestChunk0209
import CircleForestChunk0210
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_69989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_69989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69989 := by
  apply coveredState_split_literal (state := state_69989) 0
    state_69990 state_70073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69990
  · exact cover_70073
#print axioms cover_69989

def state_70772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
theorem cover_70772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70772 := by
  apply coveredState_split_literal (state := state_70772) 0
    state_70773 state_70794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70773
  · exact cover_70794
#print axioms cover_70772

def state_69988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 10)))
theorem cover_69988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69988 := by
  apply coveredState_split_literal (state := state_69988) 4
    state_69989 state_70772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69989
  · exact cover_70772
#print axioms cover_69988

def state_70858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 20)))
theorem cover_70858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70858 := by
  apply coveredState_split_literal (state := state_70858) 0
    state_70859 state_70880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70859
  · exact cover_70880
#print axioms cover_70858

def state_70857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 10)))
theorem cover_70857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70857 := by
  apply coveredState_split_literal (state := state_70857) 4
    state_70858 state_70943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70858
  · exact cover_70943
#print axioms cover_70857

def state_69987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
theorem cover_69987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69987 := by
  apply coveredState_split_literal (state := state_69987) 2
    state_69988 state_70857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69988
  · exact cover_70857
#print axioms cover_69987

def state_69915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_69915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69915 := by
  apply coveredState_split_literal (state := state_69915) 3
    state_69916 state_69987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69916
  · exact cover_69987
#print axioms cover_69915

def state_71077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 41)))
theorem cover_71077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71077 := by
  apply coveredState_split_literal (state := state_71077) 3
    state_71078 state_71101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71078
  · exact cover_71101
#print axioms cover_71077

def state_71059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 20)))
theorem cover_71059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71059 := by
  apply coveredState_split_literal (state := state_71059) 4
    state_71060 state_71077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71060
  · exact cover_71077
#print axioms cover_71059

def state_71009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_71009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71009 := by
  apply coveredState_split_literal (state := state_71009) 2
    state_71010 state_71059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71010
  · exact cover_71059
#print axioms cover_71009

def state_71008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_71008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71008 := by
  apply coveredState_split_literal (state := state_71008) 1
    state_71009 state_71158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71009
  · exact cover_71158
#print axioms cover_71008

def state_70988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_70988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70988 := by
  apply coveredState_split_literal (state := state_70988) 3
    state_70989 state_71008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70989
  · exact cover_71008
#print axioms cover_70988

def state_70974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_70974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70974 := by
  apply coveredState_split_literal (state := state_70974) 0
    state_70975 state_70988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70975
  · exact cover_70988
#print axioms cover_70974

def state_70973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 10)))
theorem cover_70973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70973 := by
  apply coveredState_split_literal (state := state_70973) 4
    state_70974 state_71167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70974
  · exact cover_71167
#print axioms cover_70973

def state_70972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
theorem cover_70972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70972 := by
  apply coveredState_split_literal (state := state_70972) 2
    state_70973 state_71206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70973
  · exact cover_71206
#print axioms cover_70972

def state_70952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_70952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70952 := by
  apply coveredState_split_literal (state := state_70952) 3
    state_70953 state_70972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70953
  · exact cover_70972
#print axioms cover_70952

def state_69914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_69914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69914 := by
  apply coveredState_split_literal (state := state_69914) 1
    state_69915 state_70952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69915
  · exact cover_70952
#print axioms cover_69914

def state_71381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 41)))
theorem cover_71381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71381 := by
  apply coveredState_split_literal (state := state_71381) 3
    state_71382 state_71409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71382
  · exact cover_71409
#print axioms cover_71381

def state_71377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 20)))
theorem cover_71377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71377 := by
  apply coveredState_split_literal (state := state_71377) 4
    state_71378 state_71381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71378
  · exact cover_71381
#print axioms cover_71377

def state_71315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_71315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71315 := by
  apply coveredState_split_literal (state := state_71315) 2
    state_71316 state_71377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71316
  · exact cover_71377
#print axioms cover_71315

def state_71314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_71314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71314 := by
  apply coveredState_split_literal (state := state_71314) 0
    state_71315 state_71472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71315
  · exact cover_71472
#print axioms cover_71314

def state_71292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_71292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71292 := by
  apply coveredState_split_literal (state := state_71292) 3
    state_71293 state_71314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71293
  · exact cover_71314
#print axioms cover_71292

def state_71278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_71278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71278 := by
  apply coveredState_split_literal (state := state_71278) 1
    state_71279 state_71292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71279
  · exact cover_71292
#print axioms cover_71278

def state_71277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 10)))
theorem cover_71277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71277 := by
  apply coveredState_split_literal (state := state_71277) 4
    state_71278 state_71481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71278
  · exact cover_71481
#print axioms cover_71277

def state_71502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 10)))
theorem cover_71502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71502 := by
  apply coveredState_split_literal (state := state_71502) 4
    state_71503 state_71542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71503
  · exact cover_71542
#print axioms cover_71502

def state_71276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
theorem cover_71276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71276 := by
  apply coveredState_split_literal (state := state_71276) 2
    state_71277 state_71502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71277
  · exact cover_71502
#print axioms cover_71276

def state_71256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_71256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71256 := by
  apply coveredState_split_literal (state := state_71256) 3
    state_71257 state_71276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71257
  · exact cover_71276
#print axioms cover_71256

def state_71642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 20)))
theorem cover_71642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71642 := by
  apply coveredState_split_literal (state := state_71642) 4
    state_71643 state_71706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71643
  · exact cover_71706
#print axioms cover_71642

def state_71747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 20)))
theorem cover_71747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71747 := by
  apply coveredState_split_literal (state := state_71747) 4
    state_71748 state_71789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71748
  · exact cover_71789
#print axioms cover_71747

def state_71641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_71641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71641 := by
  apply coveredState_split_literal (state := state_71641) 2
    state_71642 state_71747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71642
  · exact cover_71747
#print axioms cover_71641

def state_71640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_71640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71640 := by
  apply coveredState_split_literal (state := state_71640) 1
    state_71641 state_71844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71641
  · exact cover_71844
#print axioms cover_71640

def state_71639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_71639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71639 := by
  apply coveredState_split_literal (state := state_71639) 0
    state_71640 state_71871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71640
  · exact cover_71871
#print axioms cover_71639
end Mub6.Numerical.CircleFullPrototype.Forest
