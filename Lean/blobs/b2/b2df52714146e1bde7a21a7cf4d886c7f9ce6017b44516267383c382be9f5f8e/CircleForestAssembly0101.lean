import CircleFullInterface
import CircleForestAssembly0100
import CircleForestChunk0405
import CircleForestChunk0406
import CircleForestChunk0407
import CircleForestChunk0408
import CircleForestChunk0409
import CircleForestChunk0410
import CircleForestChunk0411
import CircleForestChunk0412
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1034899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 14)))
theorem cover_1034899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034899 := by
  apply coveredState_split_literal (state := state_1034899) 4
    state_1034900 state_1034931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034900
  · exact cover_1034931
#print axioms cover_1034899

def state_1034898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 14)))
theorem cover_1034898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034898 := by
  apply coveredState_split_literal (state := state_1034898) 3
    state_1034899 state_1035248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034899
  · exact cover_1035248
#print axioms cover_1034898

def state_1034897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_1034897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034897 := by
  apply coveredState_split_literal (state := state_1034897) 2
    state_1034898 state_1035307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034898
  · exact cover_1035307
#print axioms cover_1034897

def state_1034896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_1034896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034896 := by
  apply coveredState_split_literal (state := state_1034896) 1
    state_1034897 state_1035352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034897
  · exact cover_1035352
#print axioms cover_1034896

def state_1034866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_1034866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034866 := by
  apply coveredState_split_literal (state := state_1034866) 0
    state_1034867 state_1034896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034867
  · exact cover_1034896
#print axioms cover_1034866

def state_1035473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 30)))
theorem cover_1035473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035473 := by
  apply coveredState_split_literal (state := state_1035473) 4
    state_1035474 state_1035529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035474
  · exact cover_1035529
#print axioms cover_1035473

def state_1035550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 60)))
theorem cover_1035550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035550 := by
  apply coveredState_split_literal (state := state_1035550) 1
    state_1035551 state_1035588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035551
  · exact cover_1035588
#print axioms cover_1035550

def state_1035549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 60)))
theorem cover_1035549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035549 := by
  apply coveredState_split_literal (state := state_1035549) 0
    state_1035550 state_1035643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035550
  · exact cover_1035643
#print axioms cover_1035549

def state_1035548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 30)))
theorem cover_1035548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035548 := by
  apply coveredState_split_literal (state := state_1035548) 4
    state_1035549 state_1035670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035549
  · exact cover_1035670
#print axioms cover_1035548

def state_1035472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 30)))
theorem cover_1035472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035472 := by
  apply coveredState_split_literal (state := state_1035472) 3
    state_1035473 state_1035548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035473
  · exact cover_1035548
#print axioms cover_1035472

def state_1035471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
theorem cover_1035471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035471 := by
  apply coveredState_split_literal (state := state_1035471) 2
    state_1035472 state_1035713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035472
  · exact cover_1035713
#print axioms cover_1035471

def state_1035443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
theorem cover_1035443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035443 := by
  apply coveredState_split_literal (state := state_1035443) 1
    state_1035444 state_1035471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035444
  · exact cover_1035471
#print axioms cover_1035443

def state_1035425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
theorem cover_1035425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035425 := by
  apply coveredState_split_literal (state := state_1035425) 0
    state_1035426 state_1035443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035426
  · exact cover_1035443
#print axioms cover_1035425

def state_1035424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 15)))
theorem cover_1035424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035424 := by
  apply coveredState_split_literal (state := state_1035424) 4
    state_1035425 state_1035726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035425
  · exact cover_1035726
#print axioms cover_1035424

def state_1035808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
theorem cover_1035808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035808 := by
  apply coveredState_split_literal (state := state_1035808) 2
    state_1035809 state_1035864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035809
  · exact cover_1035864
#print axioms cover_1035808

def state_1035784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
theorem cover_1035784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035784 := by
  apply coveredState_split_literal (state := state_1035784) 1
    state_1035785 state_1035808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035785
  · exact cover_1035808
#print axioms cover_1035784

def state_1035752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
theorem cover_1035752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035752 := by
  apply coveredState_split_literal (state := state_1035752) 0
    state_1035753 state_1035784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035753
  · exact cover_1035784
#print axioms cover_1035752

def state_1035751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 15)))
theorem cover_1035751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035751 := by
  apply coveredState_split_literal (state := state_1035751) 4
    state_1035752 state_1035889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035752
  · exact cover_1035889
#print axioms cover_1035751

def state_1035423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 15)))
theorem cover_1035423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035423 := by
  apply coveredState_split_literal (state := state_1035423) 3
    state_1035424 state_1035751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035424
  · exact cover_1035751
#print axioms cover_1035423

def state_1035422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1035422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035422 := by
  apply coveredState_split_literal (state := state_1035422) 2
    state_1035423 state_1035916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035423
  · exact cover_1035916
#print axioms cover_1035422

def state_1036041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 61)))
theorem cover_1036041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036041 := by
  apply coveredState_split_literal (state := state_1036041) 1
    state_1036042 state_1036091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036042
  · exact cover_1036091
#print axioms cover_1036041

def state_1036117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 100) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 61)))
theorem cover_1036117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036117 := by
  apply coveredState_split_literal (state := state_1036117) 2
    state_1036118 state_1036179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036118
  · exact cover_1036179
#print axioms cover_1036117

def state_1036116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 61)))
theorem cover_1036116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036116 := by
  apply coveredState_split_literal (state := state_1036116) 1
    state_1036117 state_1036188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036117
  · exact cover_1036188
#print axioms cover_1036116

def state_1036040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 61)))
theorem cover_1036040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036040 := by
  apply coveredState_split_literal (state := state_1036040) 0
    state_1036041 state_1036116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036041
  · exact cover_1036116
#print axioms cover_1036040

def state_1036006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 30)))
theorem cover_1036006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036006 := by
  apply coveredState_split_literal (state := state_1036006) 4
    state_1036007 state_1036040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036007
  · exact cover_1036040
#print axioms cover_1036006

def state_1035970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 30)))
theorem cover_1035970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035970 := by
  apply coveredState_split_literal (state := state_1035970) 3
    state_1035971 state_1036006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035971
  · exact cover_1036006
#print axioms cover_1035970

def state_1035969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
theorem cover_1035969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035969 := by
  apply coveredState_split_literal (state := state_1035969) 2
    state_1035970 state_1036227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035970
  · exact cover_1036227
#print axioms cover_1035969

def state_1035968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
theorem cover_1035968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035968 := by
  apply coveredState_split_literal (state := state_1035968) 1
    state_1035969 state_1036234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035969
  · exact cover_1036234
#print axioms cover_1035968

def state_1035932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
theorem cover_1035932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035932 := by
  apply coveredState_split_literal (state := state_1035932) 0
    state_1035933 state_1035968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035933
  · exact cover_1035968
#print axioms cover_1035932

def state_1036361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 104 else (if j.val < 4 then 75 else 62)))
theorem cover_1036361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036361 := by
  apply coveredState_split_literal (state := state_1036361) 4
    state_1036362 state_1036417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036362
  · exact cover_1036417
#print axioms cover_1036361

def state_1036327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 104 else (if j.val < 4 then 37 else 62)))
theorem cover_1036327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036327 := by
  apply coveredState_split_literal (state := state_1036327) 3
    state_1036328 state_1036361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036328
  · exact cover_1036361
#print axioms cover_1036327

def state_1036326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 62)))
theorem cover_1036326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036326 := by
  apply coveredState_split_literal (state := state_1036326) 2
    state_1036327 state_1036446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036327
  · exact cover_1036446
#print axioms cover_1036326
end Mub6.Numerical.CircleFullD0.Forest
