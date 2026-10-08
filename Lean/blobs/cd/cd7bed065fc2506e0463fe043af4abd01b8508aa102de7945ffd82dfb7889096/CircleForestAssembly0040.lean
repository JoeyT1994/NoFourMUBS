import CircleFullInterface
import CircleForestAssembly0039
import CircleForestChunk0152
import CircleForestChunk0153
import CircleForestChunk0156
import CircleForestChunk0157
import CircleForestChunk0158
import CircleForestChunk0159
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_59018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 47 else 17)))
theorem cover_59018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59018 := by
  apply coveredState_split_literal (state := state_59018) 4
    state_59019 state_59172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59019
  · exact cover_59172
#print axioms cover_59018

def state_59017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
theorem cover_59017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59017 := by
  apply coveredState_split_literal (state := state_59017) 2
    state_59018 state_59227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59018
  · exact cover_59227
#print axioms cover_59017

def state_59016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
theorem cover_59016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59016 := by
  apply coveredState_split_literal (state := state_59016) 1
    state_59017 state_59254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59017
  · exact cover_59254
#print axioms cover_59016

def state_59302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
theorem cover_59302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59302 := by
  apply coveredState_split_literal (state := state_59302) 2
    state_59303 state_59354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59303
  · exact cover_59354
#print axioms cover_59302

def state_59301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
theorem cover_59301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59301 := by
  apply coveredState_split_literal (state := state_59301) 1
    state_59302 state_59369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59302
  · exact cover_59369
#print axioms cover_59301

def state_59015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
theorem cover_59015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59015 := by
  apply coveredState_split_literal (state := state_59015) 0
    state_59016 state_59301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59016
  · exact cover_59301
#print axioms cover_59015

def state_58983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 17)))
theorem cover_58983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58983 := by
  apply coveredState_split_literal (state := state_58983) 3
    state_58984 state_59015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58984
  · exact cover_59015
#print axioms cover_58983

def state_58927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 8)))
theorem cover_58927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58927 := by
  apply coveredState_split_literal (state := state_58927) 4
    state_58928 state_58983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58928
  · exact cover_58983
#print axioms cover_58927

def state_58779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 8)))
theorem cover_58779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58779 := by
  apply coveredState_split_literal (state := state_58779) 1
    state_58780 state_58927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58780
  · exact cover_58927
#print axioms cover_58779

def state_58641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 8)))
theorem cover_58641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58641 := by
  apply coveredState_split_literal (state := state_58641) 0
    state_58642 state_58779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58642
  · exact cover_58779
#print axioms cover_58641

def state_58273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 23 else 8)))
theorem cover_58273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58273 := by
  apply coveredState_split_literal (state := state_58273) 2
    state_58274 state_58641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58274
  · exact cover_58641
#print axioms cover_58273

def state_58231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 8)))
theorem cover_58231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58231 := by
  apply coveredState_split_literal (state := state_58231) 3
    state_58232 state_58273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58232
  · exact cover_58273
#print axioms cover_58231

def state_59415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 9)))
theorem cover_59415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59415 := by
  apply coveredState_split_literal (state := state_59415) 1
    state_59416 state_59453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59416
  · exact cover_59453
#print axioms cover_59415

def state_59399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 9)))
theorem cover_59399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59399 := by
  apply coveredState_split_literal (state := state_59399) 0
    state_59400 state_59415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59400
  · exact cover_59415
#print axioms cover_59399

def state_59528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 18)))
theorem cover_59528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59528 := by
  apply coveredState_split_literal (state := state_59528) 1
    state_59529 state_59586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59529
  · exact cover_59586
#print axioms cover_59528

def state_59527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 18)))
theorem cover_59527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59527 := by
  apply coveredState_split_literal (state := state_59527) 0
    state_59528 state_59609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59528
  · exact cover_59609
#print axioms cover_59527

def state_59525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 18)))
theorem cover_59525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59525 := by
  apply coveredState_split_literal (state := state_59525) 3
    state_59526 state_59527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59526
  · exact cover_59527
#print axioms cover_59525

def state_59524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 9)))
theorem cover_59524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59524 := by
  apply coveredState_split_literal (state := state_59524) 4
    state_59525 state_59624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59525
  · exact cover_59624
#print axioms cover_59524

def state_59522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 9)))
theorem cover_59522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59522 := by
  apply coveredState_split_literal (state := state_59522) 1
    state_59523 state_59524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59523
  · exact cover_59524
#print axioms cover_59522

def state_59482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 9)))
theorem cover_59482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59482 := by
  apply coveredState_split_literal (state := state_59482) 0
    state_59483 state_59522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59483
  · exact cover_59522
#print axioms cover_59482

def state_59398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 23 else 9)))
theorem cover_59398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59398 := by
  apply coveredState_split_literal (state := state_59398) 2
    state_59399 state_59482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59399
  · exact cover_59482
#print axioms cover_59398

def state_59390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 9)))
theorem cover_59390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59390 := by
  apply coveredState_split_literal (state := state_59390) 3
    state_59391 state_59398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59391
  · exact cover_59398
#print axioms cover_59390

def state_58230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_58230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58230 := by
  apply coveredState_split_literal (state := state_58230) 4
    state_58231 state_59390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58231
  · exact cover_59390
#print axioms cover_58230

def state_58162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_58162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58162 := by
  apply coveredState_split_literal (state := state_58162) 1
    state_58163 state_58230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58163
  · exact cover_58230
#print axioms cover_58162

def state_58074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_58074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58074 := by
  apply coveredState_split_literal (state := state_58074) 0
    state_58075 state_58162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58075
  · exact cover_58162
#print axioms cover_58074

def state_58054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
theorem cover_58054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58054 := by
  apply coveredState_split_literal (state := state_58054) 3
    state_58055 state_58074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_58055
  · exact cover_58074
#print axioms cover_58054

def state_57936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_57936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57936 := by
  apply coveredState_split_literal (state := state_57936) 2
    state_57937 state_58054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57937
  · exact cover_58054
#print axioms cover_57936

def state_57935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_57935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57935 := by
  apply coveredState_split_literal (state := state_57935) 4
    state_57936 state_59625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57936
  · exact cover_59625
#print axioms cover_57935

def state_57919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_57919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57919 := by
  apply coveredState_split_literal (state := state_57919) 3
    state_57920 state_57935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57920
  · exact cover_57935
#print axioms cover_57919

def state_59662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_59662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59662 := by
  apply coveredState_split_literal (state := state_59662) 4
    state_59663 state_59726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59663
  · exact cover_59726
#print axioms cover_59662

def state_59656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_59656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59656 := by
  apply coveredState_split_literal (state := state_59656) 3
    state_59657 state_59662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_59657
  · exact cover_59662
#print axioms cover_59656

def state_57918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_57918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57918 := by
  apply coveredState_split_literal (state := state_57918) 2
    state_57919 state_59656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_57919
  · exact cover_59656
#print axioms cover_57918
end Mub6.Numerical.CircleFullPrototype.Forest
