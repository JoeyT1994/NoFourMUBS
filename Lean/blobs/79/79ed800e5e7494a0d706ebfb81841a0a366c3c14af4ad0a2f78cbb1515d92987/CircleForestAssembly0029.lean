import CircleFullInterface
import CircleForestAssembly0028
import CircleForestChunk0113
import CircleForestChunk0114
import CircleForestChunk0115
import CircleForestChunk0116
import CircleForestChunk0117
import CircleForestChunk0118
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_48502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_48502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48502 := by
  apply coveredState_split_literal (state := state_48502) 0
    state_48503 state_48544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48503
  · exact cover_48544
#print axioms cover_48502

def state_48364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_48364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48364 := by
  apply coveredState_split_literal (state := state_48364) 4
    state_48365 state_48502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48365
  · exact cover_48502
#print axioms cover_48364

def state_48228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_48228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48228 := by
  apply coveredState_split_literal (state := state_48228) 3
    state_48229 state_48364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48229
  · exact cover_48364
#print axioms cover_48228

def state_48632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_48632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48632 := by
  apply coveredState_split_literal (state := state_48632) 0
    state_48633 state_48686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48633
  · exact cover_48686
#print axioms cover_48632

def state_48744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
theorem cover_48744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48744 := by
  apply coveredState_split_literal (state := state_48744) 4
    state_48745 state_48808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48745
  · exact cover_48808
#print axioms cover_48744

def state_48742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_48742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48742 := by
  apply coveredState_split_literal (state := state_48742) 3
    state_48743 state_48744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48743
  · exact cover_48744
#print axioms cover_48742

def state_48741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_48741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48741 := by
  apply coveredState_split_literal (state := state_48741) 2
    state_48742 state_48809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48742
  · exact cover_48809
#print axioms cover_48741

def state_48740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_48740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48740 := by
  apply coveredState_split_literal (state := state_48740) 1
    state_48741 state_48810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48741
  · exact cover_48810
#print axioms cover_48740

def state_48878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_48878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48878 := by
  apply coveredState_split_literal (state := state_48878) 3
    state_48879 state_48890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48879
  · exact cover_48890
#print axioms cover_48878

def state_48877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_48877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48877 := by
  apply coveredState_split_literal (state := state_48877) 2
    state_48878 state_48945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48878
  · exact cover_48945
#print axioms cover_48877

def state_48843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_48843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48843 := by
  apply coveredState_split_literal (state := state_48843) 1
    state_48844 state_48877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48844
  · exact cover_48877
#print axioms cover_48843

def state_48739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_48739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48739 := by
  apply coveredState_split_literal (state := state_48739) 0
    state_48740 state_48843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48740
  · exact cover_48843
#print axioms cover_48739

def state_48631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_48631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48631 := by
  apply coveredState_split_literal (state := state_48631) 4
    state_48632 state_48739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48632
  · exact cover_48739
#print axioms cover_48631

def state_48607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_48607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48607 := by
  apply coveredState_split_literal (state := state_48607) 3
    state_48608 state_48631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48608
  · exact cover_48631
#print axioms cover_48607

def state_48227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_48227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48227 := by
  apply coveredState_split_literal (state := state_48227) 2
    state_48228 state_48607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48228
  · exact cover_48607
#print axioms cover_48227

def state_47987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_47987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47987 := by
  apply coveredState_split_literal (state := state_47987) 1
    state_47988 state_48227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47988
  · exact cover_48227
#print axioms cover_47987

def state_45483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_45483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45483 := by
  apply coveredState_split_literal (state := state_45483) 0
    state_45484 state_47987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45484
  · exact cover_47987
#print axioms cover_45483

def state_49003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_49003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49003 := by
  apply coveredState_split_literal (state := state_49003) 0
    state_49004 state_49049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49004
  · exact cover_49049
#print axioms cover_49003

def state_49145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_49145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49145 := by
  apply coveredState_split_literal (state := state_49145) 2
    state_49146 state_49205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49146
  · exact cover_49205
#print axioms cover_49145

def state_49107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_49107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49107 := by
  apply coveredState_split_literal (state := state_49107) 1
    state_49108 state_49145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49108
  · exact cover_49145
#print axioms cover_49107

def state_49300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 26)))
theorem cover_49300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49300 := by
  apply coveredState_split_literal (state := state_49300) 2
    state_49301 state_49328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49301
  · exact cover_49328
#print axioms cover_49300

def state_49432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 53)))
theorem cover_49432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49432 := by
  apply coveredState_split_literal (state := state_49432) 2
    state_49433 state_49450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49433
  · exact cover_49450
#print axioms cover_49432

def state_49422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 53)))
theorem cover_49422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49422 := by
  apply coveredState_split_literal (state := state_49422) 0
    state_49423 state_49432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49423
  · exact cover_49432
#print axioms cover_49422

def state_49421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 53)))
theorem cover_49421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49421 := by
  apply coveredState_split_literal (state := state_49421) 1
    state_49422 state_49497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49422
  · exact cover_49497
#print axioms cover_49421

def state_49409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 26)))
theorem cover_49409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49409 := by
  apply coveredState_split_literal (state := state_49409) 4
    state_49410 state_49421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49410
  · exact cover_49421
#print axioms cover_49409

def state_49383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 26)))
theorem cover_49383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49383 := by
  apply coveredState_split_literal (state := state_49383) 3
    state_49384 state_49409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49384
  · exact cover_49409
#print axioms cover_49383

def state_49373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 26)))
theorem cover_49373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49373 := by
  apply coveredState_split_literal (state := state_49373) 2
    state_49374 state_49383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49374
  · exact cover_49383
#print axioms cover_49373

def state_49299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 26)))
theorem cover_49299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49299 := by
  apply coveredState_split_literal (state := state_49299) 1
    state_49300 state_49373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49300
  · exact cover_49373
#print axioms cover_49299

def state_49564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 53)))
theorem cover_49564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49564 := by
  apply coveredState_split_literal (state := state_49564) 2
    state_49565 state_49588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49565
  · exact cover_49588
#print axioms cover_49564

def state_49563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 53)))
theorem cover_49563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49563 := by
  apply coveredState_split_literal (state := state_49563) 1
    state_49564 state_49629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49564
  · exact cover_49629
#print axioms cover_49563

def state_49562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 53)))
theorem cover_49562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49562 := by
  apply coveredState_split_literal (state := state_49562) 0
    state_49563 state_49652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49563
  · exact cover_49652
#print axioms cover_49562

def state_49556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 26)))
theorem cover_49556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49556 := by
  apply coveredState_split_literal (state := state_49556) 4
    state_49557 state_49562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49557
  · exact cover_49562
#print axioms cover_49556
end Mub6.Numerical.CircleFullPrototype.Forest
