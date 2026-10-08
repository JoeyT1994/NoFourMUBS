import CircleFullInterface
import CircleForestAssembly0541
import CircleForestChunk2136
import CircleForestChunk2137
import CircleForestChunk2138
import CircleForestChunk2139
import CircleForestChunk2140
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2593503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 24 else 19)))
theorem cover_2593503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593503 := by
  apply coveredState_split_literal (state := state_2593503) 3
    state_2593504 state_2593627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593504
  · exact cover_2593627
#print axioms cover_2593503

def state_2593502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 19)))
theorem cover_2593502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593502 := by
  apply coveredState_split_literal (state := state_2593502) 2
    state_2593503 state_2593634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593503
  · exact cover_2593634
#print axioms cover_2593502

def state_2593448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
theorem cover_2593448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593448 := by
  apply coveredState_split_literal (state := state_2593448) 4
    state_2593449 state_2593502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593449
  · exact cover_2593502
#print axioms cover_2593448

def state_2593663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 37)))
theorem cover_2593663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593663 := by
  apply coveredState_split_literal (state := state_2593663) 2
    state_2593664 state_2593721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593664
  · exact cover_2593721
#print axioms cover_2593663

def state_2593651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 18)))
theorem cover_2593651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593651 := by
  apply coveredState_split_literal (state := state_2593651) 4
    state_2593652 state_2593663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593652
  · exact cover_2593663
#print axioms cover_2593651

def state_2593650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 18)))
theorem cover_2593650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593650 := by
  apply coveredState_split_literal (state := state_2593650) 1
    state_2593651 state_2593740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593651
  · exact cover_2593740
#print axioms cover_2593650

def state_2593646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 18)))
theorem cover_2593646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593646 := by
  apply coveredState_split_literal (state := state_2593646) 0
    state_2593647 state_2593650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593647
  · exact cover_2593650
#print axioms cover_2593646

def state_2593645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 24 else 18)))
theorem cover_2593645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593645 := by
  apply coveredState_split_literal (state := state_2593645) 3
    state_2593646 state_2593769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593646
  · exact cover_2593769
#print axioms cover_2593645

def state_2593644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 18)))
theorem cover_2593644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593644 := by
  apply coveredState_split_literal (state := state_2593644) 2
    state_2593645 state_2593776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593645
  · exact cover_2593776
#print axioms cover_2593644

def state_2593797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 38)))
theorem cover_2593797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593797 := by
  apply coveredState_split_literal (state := state_2593797) 2
    state_2593798 state_2593859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593798
  · exact cover_2593859
#print axioms cover_2593797

def state_2593796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2593796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593796 := by
  apply coveredState_split_literal (state := state_2593796) 4
    state_2593797 state_2593896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593797
  · exact cover_2593896
#print axioms cover_2593796

def state_2593795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2593795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593795 := by
  apply coveredState_split_literal (state := state_2593795) 1
    state_2593796 state_2593929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593796
  · exact cover_2593929
#print axioms cover_2593795

def state_2593787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2593787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593787 := by
  apply coveredState_split_literal (state := state_2593787) 0
    state_2593788 state_2593795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593788
  · exact cover_2593795
#print axioms cover_2593787

def state_2593786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 24 else 19)))
theorem cover_2593786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593786 := by
  apply coveredState_split_literal (state := state_2593786) 3
    state_2593787 state_2593980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593787
  · exact cover_2593980
#print axioms cover_2593786

def state_2593785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 19)))
theorem cover_2593785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593785 := by
  apply coveredState_split_literal (state := state_2593785) 2
    state_2593786 state_2593989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593786
  · exact cover_2593989
#print axioms cover_2593785

def state_2593643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
theorem cover_2593643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593643 := by
  apply coveredState_split_literal (state := state_2593643) 4
    state_2593644 state_2593785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593644
  · exact cover_2593785
#print axioms cover_2593643

def state_2593447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
theorem cover_2593447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593447 := by
  apply coveredState_split_literal (state := state_2593447) 1
    state_2593448 state_2593643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593448
  · exact cover_2593643
#print axioms cover_2593447

def state_2593446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 9)))
theorem cover_2593446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593446 := by
  apply coveredState_split_literal (state := state_2593446) 3
    state_2593447 state_2594000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593447
  · exact cover_2594000
#print axioms cover_2593446

def state_2593445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 9)))
theorem cover_2593445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593445 := by
  apply coveredState_split_literal (state := state_2593445) 2
    state_2593446 state_2594003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593446
  · exact cover_2594003
#print axioms cover_2593445

def state_2593437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 9)))
theorem cover_2593437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593437 := by
  apply coveredState_split_literal (state := state_2593437) 0
    state_2593438 state_2593445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593438
  · exact cover_2593445
#print axioms cover_2593437

def state_2593409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_2593409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593409 := by
  apply coveredState_split_literal (state := state_2593409) 4
    state_2593410 state_2593437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593410
  · exact cover_2593437
#print axioms cover_2593409

def state_2593375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_2593375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593375 := by
  apply coveredState_split_literal (state := state_2593375) 1
    state_2593376 state_2593409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593376
  · exact cover_2593409
#print axioms cover_2593375

def state_2593374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_2593374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593374 := by
  apply coveredState_split_literal (state := state_2593374) 3
    state_2593375 state_2594008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593375
  · exact cover_2594008
#print axioms cover_2593374

def state_2593373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2593373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593373 := by
  apply coveredState_split_literal (state := state_2593373) 2
    state_2593374 state_2594009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593374
  · exact cover_2594009
#print axioms cover_2593373

def state_2594055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2594055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594055 := by
  apply coveredState_split_literal (state := state_2594055) 4
    state_2594056 state_2594089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594056
  · exact cover_2594089
#print axioms cover_2594055

def state_2594054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2594054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594054 := by
  apply coveredState_split_literal (state := state_2594054) 0
    state_2594055 state_2594140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594055
  · exact cover_2594140
#print axioms cover_2594054

def state_2594053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 24 else 19)))
theorem cover_2594053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594053 := by
  apply coveredState_split_literal (state := state_2594053) 3
    state_2594054 state_2594145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594054
  · exact cover_2594145
#print axioms cover_2594053

def state_2594052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 19)))
theorem cover_2594052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594052 := by
  apply coveredState_split_literal (state := state_2594052) 2
    state_2594053 state_2594158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594053
  · exact cover_2594158
#print axioms cover_2594052

def state_2594050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
theorem cover_2594050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594050 := by
  apply coveredState_split_literal (state := state_2594050) 4
    state_2594051 state_2594052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594051
  · exact cover_2594052
#print axioms cover_2594050

def state_2594187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 18)))
theorem cover_2594187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594187 := by
  apply coveredState_split_literal (state := state_2594187) 1
    state_2594188 state_2594223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594188
  · exact cover_2594223
#print axioms cover_2594187

def state_2594186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 18)))
theorem cover_2594186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594186 := by
  apply coveredState_split_literal (state := state_2594186) 0
    state_2594187 state_2594274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594187
  · exact cover_2594274
#print axioms cover_2594186

def state_2594185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 24 else 18)))
theorem cover_2594185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594185 := by
  apply coveredState_split_literal (state := state_2594185) 3
    state_2594186 state_2594279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594186
  · exact cover_2594279
#print axioms cover_2594185
end Mub6.Numerical.CircleFullD0.Forest
