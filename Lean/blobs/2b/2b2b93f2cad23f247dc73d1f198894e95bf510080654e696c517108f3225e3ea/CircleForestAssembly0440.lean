import CircleFullInterface
import CircleForestAssembly0398
import CircleForestAssembly0425
import CircleForestAssembly0429
import CircleForestAssembly0430
import CircleForestAssembly0438
import CircleForestAssembly0439
import CircleForestChunk1680
import CircleForestChunk1720
import CircleForestChunk1722
import CircleForestChunk1724
import CircleForestChunk1725
import CircleForestChunk1726
import CircleForestChunk1727
import CircleForestChunk1728
import CircleForestChunk1729
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2286582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 15)))
theorem cover_2286582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286582 := by
  apply coveredState_split_literal (state := state_2286582) 3
    state_2286583 state_2287100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286583
  · exact cover_2287100
#print axioms cover_2286582

def state_2286576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
theorem cover_2286576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286576 := by
  apply coveredState_split_literal (state := state_2286576) 2
    state_2286577 state_2286582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286577
  · exact cover_2286582
#print axioms cover_2286576

def state_2286575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
theorem cover_2286575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286575 := by
  apply coveredState_split_literal (state := state_2286575) 0
    state_2286576 state_2287109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286576
  · exact cover_2287109
#print axioms cover_2286575

def state_2286533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2286533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286533 := by
  apply coveredState_split_literal (state := state_2286533) 4
    state_2286534 state_2286575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286534
  · exact cover_2286575
#print axioms cover_2286533

def state_2286532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2286532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286532 := by
  apply coveredState_split_literal (state := state_2286532) 1
    state_2286533 state_2287116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286533
  · exact cover_2287116
#print axioms cover_2286532

def state_2286092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2286092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286092 := by
  apply coveredState_split_literal (state := state_2286092) 3
    state_2286093 state_2286532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286093
  · exact cover_2286532
#print axioms cover_2286092

def state_2286084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2286084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286084 := by
  apply coveredState_split_literal (state := state_2286084) 2
    state_2286085 state_2286092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2286085
  · exact cover_2286092
#print axioms cover_2286084

def state_2276760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2276760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276760 := by
  apply coveredState_split_literal (state := state_2276760) 0
    state_2276761 state_2286084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276761
  · exact cover_2286084
#print axioms cover_2276760

def state_2276600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2276600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276600 := by
  apply coveredState_split_literal (state := state_2276600) 4
    state_2276601 state_2276760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276601
  · exact cover_2276760
#print axioms cover_2276600

def state_2276534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2276534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276534 := by
  apply coveredState_split_literal (state := state_2276534) 3
    state_2276535 state_2276600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276535
  · exact cover_2276600
#print axioms cover_2276534

def state_2276516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2276516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276516 := by
  apply coveredState_split_literal (state := state_2276516) 2
    state_2276517 state_2276534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276517
  · exact cover_2276534
#print axioms cover_2276516

def state_2272362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2272362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272362 := by
  apply coveredState_split_literal (state := state_2272362) 1
    state_2272363 state_2276516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272363
  · exact cover_2276516
#print axioms cover_2272362

def state_2245818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2245818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245818 := by
  apply coveredState_split_literal (state := state_2245818) 0
    state_2245819 state_2272362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245819
  · exact cover_2272362
#print axioms cover_2245818

def state_2244400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2244400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244400 := by
  apply coveredState_split_literal (state := state_2244400) 4
    state_2244401 state_2245818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244401
  · exact cover_2245818
#print axioms cover_2244400

def state_2287299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 22)))
theorem cover_2287299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287299 := by
  apply coveredState_split_literal (state := state_2287299) 0
    state_2287300 state_2287319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287300
  · exact cover_2287319
#print axioms cover_2287299

def state_2287410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 24 else 23)))
theorem cover_2287410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287410 := by
  apply coveredState_split_literal (state := state_2287410) 3
    state_2287411 state_2287422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287411
  · exact cover_2287422
#print axioms cover_2287410

def state_2287398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 23)))
theorem cover_2287398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287398 := by
  apply coveredState_split_literal (state := state_2287398) 2
    state_2287399 state_2287410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287399
  · exact cover_2287410
#print axioms cover_2287398

def state_2287370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 23)))
theorem cover_2287370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287370 := by
  apply coveredState_split_literal (state := state_2287370) 0
    state_2287371 state_2287398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287371
  · exact cover_2287398
#print axioms cover_2287370

def state_2287298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
theorem cover_2287298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287298 := by
  apply coveredState_split_literal (state := state_2287298) 4
    state_2287299 state_2287370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287299
  · exact cover_2287370
#print axioms cover_2287298

def state_2287477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_2287477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287477 := by
  apply coveredState_split_literal (state := state_2287477) 4
    state_2287478 state_2287509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287478
  · exact cover_2287509
#print axioms cover_2287477

def state_2287297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_2287297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287297 := by
  apply coveredState_split_literal (state := state_2287297) 3
    state_2287298 state_2287477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287298
  · exact cover_2287477
#print axioms cover_2287297

def state_2287255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_2287255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287255 := by
  apply coveredState_split_literal (state := state_2287255) 1
    state_2287256 state_2287297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287256
  · exact cover_2287297
#print axioms cover_2287255

def state_2287638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 23)))
theorem cover_2287638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287638 := by
  apply coveredState_split_literal (state := state_2287638) 4
    state_2287639 state_2287650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287639
  · exact cover_2287650
#print axioms cover_2287638

def state_2287637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 23)))
theorem cover_2287637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287637 := by
  apply coveredState_split_literal (state := state_2287637) 3
    state_2287638 state_2287705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287638
  · exact cover_2287705
#print axioms cover_2287637

def state_2287636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2287636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287636 := by
  apply coveredState_split_literal (state := state_2287636) 2
    state_2287637 state_2287706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287637
  · exact cover_2287706
#print axioms cover_2287636

def state_2287748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 46)))
theorem cover_2287748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287748 := by
  apply coveredState_split_literal (state := state_2287748) 0
    state_2287749 state_2287812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287749
  · exact cover_2287812
#print axioms cover_2287748

def state_2287736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 46)))
theorem cover_2287736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287736 := by
  apply coveredState_split_literal (state := state_2287736) 1
    state_2287737 state_2287748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287737
  · exact cover_2287748
#print axioms cover_2287736

def state_2287875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 47)))
theorem cover_2287875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287875 := by
  apply coveredState_split_literal (state := state_2287875) 3
    state_2287876 state_2287897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287876
  · exact cover_2287897
#print axioms cover_2287875

def state_2287974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 96 else 94)))
theorem cover_2287974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287974 := by
  apply coveredState_split_literal (state := state_2287974) 0
    state_2287975 state_2288036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287975
  · exact cover_2288036
#print axioms cover_2287974

def state_2287944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 96 else 94)))
theorem cover_2287944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287944 := by
  apply coveredState_split_literal (state := state_2287944) 1
    state_2287945 state_2287974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287945
  · exact cover_2287974
#print axioms cover_2287944

def state_2287943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 96 else 47)))
theorem cover_2287943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287943 := by
  apply coveredState_split_literal (state := state_2287943) 4
    state_2287944 state_2288085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287944
  · exact cover_2288085
#print axioms cover_2287943

def state_2288151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 94)))
theorem cover_2288151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288151 := by
  apply coveredState_split_literal (state := state_2288151) 0
    state_2288152 state_2288161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2288152
  · exact cover_2288161
#print axioms cover_2288151
end Mub6.Numerical.CircleFullD0.Forest
