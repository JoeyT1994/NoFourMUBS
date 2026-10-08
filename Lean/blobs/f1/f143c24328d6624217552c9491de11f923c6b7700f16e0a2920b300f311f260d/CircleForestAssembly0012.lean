import CircleFullInterface
import CircleForestAssembly0005
import CircleForestAssembly0006
import CircleForestAssembly0009
import CircleForestAssembly0010
import CircleForestAssembly0011
import CircleForestChunk0043
import CircleForestChunk0049
import CircleForestChunk0053
import CircleForestChunk0054
import CircleForestChunk0055
import CircleForestChunk0056
import CircleForestChunk0057
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_949236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
theorem cover_949236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949236 := by
  apply coveredState_split_literal (state := state_949236) 0
    state_949237 state_949296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949237
  · exact cover_949296
#print axioms cover_949236

def state_948422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 54)))
theorem cover_948422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948422 := by
  apply coveredState_split_literal (state := state_948422) 3
    state_948423 state_949236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948423
  · exact cover_949236
#print axioms cover_948422

def state_948421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_948421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948421 := by
  apply coveredState_split_literal (state := state_948421) 4
    state_948422 state_950141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948422
  · exact cover_950141
#print axioms cover_948421

def state_948131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_948131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948131 := by
  apply coveredState_split_literal (state := state_948131) 1
    state_948132 state_948421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948132
  · exact cover_948421
#print axioms cover_948131

def state_947975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_947975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947975 := by
  apply coveredState_split_literal (state := state_947975) 2
    state_947976 state_948131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947976
  · exact cover_948131
#print axioms cover_947975

def state_947929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_947929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947929 := by
  apply coveredState_split_literal (state := state_947929) 0
    state_947930 state_947975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947930
  · exact cover_947975
#print axioms cover_947929

def state_947771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 27)))
theorem cover_947771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947771 := by
  apply coveredState_split_literal (state := state_947771) 3
    state_947772 state_947929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947772
  · exact cover_947929
#print axioms cover_947771

def state_944775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_944775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944775 := by
  apply coveredState_split_literal (state := state_944775) 4
    state_944776 state_947771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944776
  · exact cover_947771
#print axioms cover_944775

def state_943371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_943371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943371 := by
  apply coveredState_split_literal (state := state_943371) 1
    state_943372 state_944775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943372
  · exact cover_944775
#print axioms cover_943371

def state_942775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_942775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942775 := by
  apply coveredState_split_literal (state := state_942775) 2
    state_942776 state_943371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942776
  · exact cover_943371
#print axioms cover_942775

def state_950195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 13)))
theorem cover_950195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950195 := by
  apply coveredState_split_literal (state := state_950195) 1
    state_950196 state_950239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950196
  · exact cover_950239
#print axioms cover_950195

def state_950298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 26)))
theorem cover_950298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950298 := by
  apply coveredState_split_literal (state := state_950298) 3
    state_950299 state_950360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950299
  · exact cover_950360
#print axioms cover_950298

def state_950297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_950297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950297 := by
  apply coveredState_split_literal (state := state_950297) 4
    state_950298 state_950423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950298
  · exact cover_950423
#print axioms cover_950297

def state_950527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 53)))
theorem cover_950527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950527 := by
  apply coveredState_split_literal (state := state_950527) 3
    state_950528 state_950585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950528
  · exact cover_950585
#print axioms cover_950527

def state_950517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 26)))
theorem cover_950517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950517 := by
  apply coveredState_split_literal (state := state_950517) 4
    state_950518 state_950527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950518
  · exact cover_950527
#print axioms cover_950517

def state_950516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 26)))
theorem cover_950516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950516 := by
  apply coveredState_split_literal (state := state_950516) 1
    state_950517 state_950604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950517
  · exact cover_950604
#print axioms cover_950516

def state_950492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
theorem cover_950492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950492 := by
  apply coveredState_split_literal (state := state_950492) 2
    state_950493 state_950516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950493
  · exact cover_950516
#print axioms cover_950492

def state_950491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
theorem cover_950491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950491 := by
  apply coveredState_split_literal (state := state_950491) 0
    state_950492 state_950643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950492
  · exact cover_950643
#print axioms cover_950491

def state_950437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 26)))
theorem cover_950437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950437 := by
  apply coveredState_split_literal (state := state_950437) 3
    state_950438 state_950491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950438
  · exact cover_950491
#print axioms cover_950437

def state_950702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
theorem cover_950702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950702 := by
  apply coveredState_split_literal (state := state_950702) 1
    state_950703 state_950726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950703
  · exact cover_950726
#print axioms cover_950702

def state_950820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
theorem cover_950820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950820 := by
  apply coveredState_split_literal (state := state_950820) 2
    state_950821 state_950872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950821
  · exact cover_950872
#print axioms cover_950820

def state_950819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
theorem cover_950819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950819 := by
  apply coveredState_split_literal (state := state_950819) 0
    state_950820 state_950921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950820
  · exact cover_950921
#print axioms cover_950819

def state_950963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 54)))
theorem cover_950963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950963 := by
  apply coveredState_split_literal (state := state_950963) 1
    state_950964 state_951009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950964
  · exact cover_951009
#print axioms cover_950963

def state_950935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
theorem cover_950935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950935 := by
  apply coveredState_split_literal (state := state_950935) 2
    state_950936 state_950963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950936
  · exact cover_950963
#print axioms cover_950935

def state_950934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
theorem cover_950934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950934 := by
  apply coveredState_split_literal (state := state_950934) 0
    state_950935 state_951070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950935
  · exact cover_951070
#print axioms cover_950934

def state_950818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 54)))
theorem cover_950818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950818 := by
  apply coveredState_split_literal (state := state_950818) 3
    state_950819 state_950934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950819
  · exact cover_950934
#print axioms cover_950818

def state_950817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_950817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950817 := by
  apply coveredState_split_literal (state := state_950817) 4
    state_950818 state_951079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950818
  · exact cover_951079
#print axioms cover_950817

def state_950767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_950767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950767 := by
  apply coveredState_split_literal (state := state_950767) 1
    state_950768 state_950817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950768
  · exact cover_950817
#print axioms cover_950767

def state_950701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_950701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950701 := by
  apply coveredState_split_literal (state := state_950701) 2
    state_950702 state_950767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950702
  · exact cover_950767
#print axioms cover_950701

def state_950700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_950700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950700 := by
  apply coveredState_split_literal (state := state_950700) 0
    state_950701 state_951116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950701
  · exact cover_951116
#print axioms cover_950700

def state_950650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 27)))
theorem cover_950650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950650 := by
  apply coveredState_split_literal (state := state_950650) 3
    state_950651 state_950700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950651
  · exact cover_950700
#print axioms cover_950650

def state_950436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_950436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950436 := by
  apply coveredState_split_literal (state := state_950436) 4
    state_950437 state_950650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950437
  · exact cover_950650
#print axioms cover_950436
end Mub6.Numerical.CircleFullD0.Forest
