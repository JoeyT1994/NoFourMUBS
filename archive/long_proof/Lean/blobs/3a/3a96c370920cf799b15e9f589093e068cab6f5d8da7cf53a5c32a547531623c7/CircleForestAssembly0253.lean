import CircleFullInterface
import CircleForestAssembly0252
import CircleForestChunk0962
import CircleForestChunk0967
import CircleForestChunk0968
import CircleForestChunk0969
import CircleForestChunk0970
import CircleForestChunk0971
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1531556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
theorem cover_1531556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531556 := by
  apply coveredState_split_literal (state := state_1531556) 3
    state_1531557 state_1532724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531557
  · exact cover_1532724
#print axioms cover_1531556

def state_1531555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
theorem cover_1531555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531555 := by
  apply coveredState_split_literal (state := state_1531555) 1
    state_1531556 state_1532765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531556
  · exact cover_1532765
#print axioms cover_1531555

def state_1531525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1531525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531525 := by
  apply coveredState_split_literal (state := state_1531525) 2
    state_1531526 state_1531555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531526
  · exact cover_1531555
#print axioms cover_1531525

def state_1531524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1531524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531524 := by
  apply coveredState_split_literal (state := state_1531524) 0
    state_1531525 state_1532822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531525
  · exact cover_1532822
#print axioms cover_1531524

def state_1532918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 34)))
theorem cover_1532918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532918 := by
  apply coveredState_split_literal (state := state_1532918) 2
    state_1532919 state_1532944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532919
  · exact cover_1532944
#print axioms cover_1532918

def state_1533001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 34)))
theorem cover_1533001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533001 := by
  apply coveredState_split_literal (state := state_1533001) 2
    state_1533002 state_1533025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533002
  · exact cover_1533025
#print axioms cover_1533001

def state_1532917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 34)))
theorem cover_1532917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532917 := by
  apply coveredState_split_literal (state := state_1532917) 0
    state_1532918 state_1533001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532918
  · exact cover_1533001
#print axioms cover_1532917

def state_1532916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 17)))
theorem cover_1532916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532916 := by
  apply coveredState_split_literal (state := state_1532916) 4
    state_1532917 state_1533078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532917
  · exact cover_1533078
#print axioms cover_1532916

def state_1532915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 17)))
theorem cover_1532915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532915 := by
  apply coveredState_split_literal (state := state_1532915) 3
    state_1532916 state_1533079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532916
  · exact cover_1533079
#print axioms cover_1532915

def state_1533128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 34)))
theorem cover_1533128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533128 := by
  apply coveredState_split_literal (state := state_1533128) 0
    state_1533129 state_1533188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533129
  · exact cover_1533188
#print axioms cover_1533128

def state_1533127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 17)))
theorem cover_1533127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533127 := by
  apply coveredState_split_literal (state := state_1533127) 4
    state_1533128 state_1533233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533128
  · exact cover_1533233
#print axioms cover_1533127

def state_1533303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 34)))
theorem cover_1533303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533303 := by
  apply coveredState_split_literal (state := state_1533303) 2
    state_1533304 state_1533315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533304
  · exact cover_1533315
#print axioms cover_1533303

def state_1533289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 34)))
theorem cover_1533289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533289 := by
  apply coveredState_split_literal (state := state_1533289) 0
    state_1533290 state_1533303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533290
  · exact cover_1533303
#print axioms cover_1533289

def state_1533410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 103 else (if j.val < 4 then 39 else 35)))
theorem cover_1533410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533410 := by
  apply coveredState_split_literal (state := state_1533410) 1
    state_1533411 state_1533440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533411
  · exact cover_1533440
#print axioms cover_1533410

def state_1533394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 35)))
theorem cover_1533394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533394 := by
  apply coveredState_split_literal (state := state_1533394) 2
    state_1533395 state_1533410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533395
  · exact cover_1533410
#print axioms cover_1533394

def state_1533368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 35)))
theorem cover_1533368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533368 := by
  apply coveredState_split_literal (state := state_1533368) 0
    state_1533369 state_1533394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533369
  · exact cover_1533394
#print axioms cover_1533368

def state_1533288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 17)))
theorem cover_1533288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533288 := by
  apply coveredState_split_literal (state := state_1533288) 4
    state_1533289 state_1533368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533289
  · exact cover_1533368
#print axioms cover_1533288

def state_1533126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 17)))
theorem cover_1533126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533126 := by
  apply coveredState_split_literal (state := state_1533126) 3
    state_1533127 state_1533288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533127
  · exact cover_1533288
#print axioms cover_1533126

def state_1532914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 17)))
theorem cover_1532914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532914 := by
  apply coveredState_split_literal (state := state_1532914) 1
    state_1532915 state_1533126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532915
  · exact cover_1533126
#print axioms cover_1532914

def state_1532858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 17)))
theorem cover_1532858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532858 := by
  apply coveredState_split_literal (state := state_1532858) 2
    state_1532859 state_1532914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532859
  · exact cover_1532914
#print axioms cover_1532858

def state_1533525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 17)))
theorem cover_1533525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533525 := by
  apply coveredState_split_literal (state := state_1533525) 4
    state_1533526 state_1533551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533526
  · exact cover_1533551
#print axioms cover_1533525

def state_1533515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 17)))
theorem cover_1533515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533515 := by
  apply coveredState_split_literal (state := state_1533515) 3
    state_1533516 state_1533525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533516
  · exact cover_1533525
#print axioms cover_1533515

def state_1533499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 17)))
theorem cover_1533499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533499 := by
  apply coveredState_split_literal (state := state_1533499) 1
    state_1533500 state_1533515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533500
  · exact cover_1533515
#print axioms cover_1533499

def state_1533493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 17)))
theorem cover_1533493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533493 := by
  apply coveredState_split_literal (state := state_1533493) 2
    state_1533494 state_1533499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533494
  · exact cover_1533499
#print axioms cover_1533493

def state_1532857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 17)))
theorem cover_1532857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532857 := by
  apply coveredState_split_literal (state := state_1532857) 0
    state_1532858 state_1533493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1532858
  · exact cover_1533493
#print axioms cover_1532857

def state_1531523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 8)))
theorem cover_1531523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531523 := by
  apply coveredState_split_literal (state := state_1531523) 4
    state_1531524 state_1532857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531524
  · exact cover_1532857
#print axioms cover_1531523

def state_1531435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
theorem cover_1531435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531435 := by
  apply coveredState_split_literal (state := state_1531435) 3
    state_1531436 state_1531523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531436
  · exact cover_1531523
#print axioms cover_1531435

def state_1533610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 8)))
theorem cover_1533610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533610 := by
  apply coveredState_split_literal (state := state_1533610) 4
    state_1533611 state_1533624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533611
  · exact cover_1533624
#print axioms cover_1533610

def state_1533596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
theorem cover_1533596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533596 := by
  apply coveredState_split_literal (state := state_1533596) 3
    state_1533597 state_1533610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533597
  · exact cover_1533610
#print axioms cover_1533596

def state_1531434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
theorem cover_1531434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531434 := by
  apply coveredState_split_literal (state := state_1531434) 1
    state_1531435 state_1533596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531435
  · exact cover_1533596
#print axioms cover_1531434

def state_1531398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1531398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531398 := by
  apply coveredState_split_literal (state := state_1531398) 2
    state_1531399 state_1531434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531399
  · exact cover_1531434
#print axioms cover_1531398

def state_1531397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1531397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531397 := by
  apply coveredState_split_literal (state := state_1531397) 0
    state_1531398 state_1533681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531398
  · exact cover_1533681
#print axioms cover_1531397
end Mub6.Numerical.CircleFullD0.Forest
