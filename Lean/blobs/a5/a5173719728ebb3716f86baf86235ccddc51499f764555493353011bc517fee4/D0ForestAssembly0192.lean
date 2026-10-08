import D0FullInterface
import D0ForestAssembly0191
import D0ForestChunk0718
import D0ForestChunk0719
import D0ForestChunk0720
import D0ForestChunk0721
import D0ForestChunk0722
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1473370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 28)))
theorem cover_1473370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473370 := by
  apply coveredState_split_literal (state := state_1473370) 1
    state_1473371 state_1473396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473371
  · exact cover_1473396
#print axioms cover_1473370

def state_1473369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 28)))
theorem cover_1473369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473369 := by
  apply coveredState_split_literal (state := state_1473369) 3
    state_1473370 state_1473451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473370
  · exact cover_1473451
#print axioms cover_1473369

def state_1473368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 28)))
theorem cover_1473368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473368 := by
  apply coveredState_split_literal (state := state_1473368) 0
    state_1473369 state_1473474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473369
  · exact cover_1473474
#print axioms cover_1473368

def state_1473340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 28)))
theorem cover_1473340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473340 := by
  apply coveredState_split_literal (state := state_1473340) 2
    state_1473341 state_1473368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473341
  · exact cover_1473368
#print axioms cover_1473340

def state_1473620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 58)))
theorem cover_1473620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473620 := by
  apply coveredState_split_literal (state := state_1473620) 3
    state_1473621 state_1473676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473621
  · exact cover_1473676
#print axioms cover_1473620

def state_1473592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 58)))
theorem cover_1473592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473592 := by
  apply coveredState_split_literal (state := state_1473592) 0
    state_1473593 state_1473620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473593
  · exact cover_1473620
#print axioms cover_1473592

def state_1473548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 58)))
theorem cover_1473548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473548 := by
  apply coveredState_split_literal (state := state_1473548) 2
    state_1473549 state_1473592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473549
  · exact cover_1473592
#print axioms cover_1473548

def state_1473713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 59)))
theorem cover_1473713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473713 := by
  apply coveredState_split_literal (state := state_1473713) 2
    state_1473714 state_1473733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473714
  · exact cover_1473733
#print axioms cover_1473713

def state_1473547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 29)))
theorem cover_1473547 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473547 := by
  apply coveredState_split_literal (state := state_1473547) 4
    state_1473548 state_1473713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473548
  · exact cover_1473713
#print axioms cover_1473547

def state_1473533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 29)))
theorem cover_1473533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473533 := by
  apply coveredState_split_literal (state := state_1473533) 1
    state_1473534 state_1473547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473534
  · exact cover_1473547
#print axioms cover_1473533

def state_1473532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 29)))
theorem cover_1473532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473532 := by
  apply coveredState_split_literal (state := state_1473532) 3
    state_1473533 state_1473788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473533
  · exact cover_1473788
#print axioms cover_1473532

def state_1473531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 29)))
theorem cover_1473531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473531 := by
  apply coveredState_split_literal (state := state_1473531) 0
    state_1473532 state_1473815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473532
  · exact cover_1473815
#print axioms cover_1473531

def state_1473505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 29)))
theorem cover_1473505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473505 := by
  apply coveredState_split_literal (state := state_1473505) 2
    state_1473506 state_1473531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473506
  · exact cover_1473531
#print axioms cover_1473505

def state_1473339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 14)))
theorem cover_1473339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473339 := by
  apply coveredState_split_literal (state := state_1473339) 4
    state_1473340 state_1473505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473340
  · exact cover_1473505
#print axioms cover_1473339

def state_1473325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 14)))
theorem cover_1473325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473325 := by
  apply coveredState_split_literal (state := state_1473325) 1
    state_1473326 state_1473339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473326
  · exact cover_1473339
#print axioms cover_1473325

def state_1471959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1471959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471959 := by
  apply coveredState_split_literal (state := state_1471959) 3
    state_1471960 state_1473325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471960
  · exact cover_1473325
#print axioms cover_1471959

def state_1471958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1471958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471958 := by
  apply coveredState_split_literal (state := state_1471958) 0
    state_1471959 state_1473832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471959
  · exact cover_1473832
#print axioms cover_1471958

def state_1473850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 15)))
theorem cover_1473850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473850 := by
  apply coveredState_split_literal (state := state_1473850) 3
    state_1473851 state_1473876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473851
  · exact cover_1473876
#print axioms cover_1473850

def state_1473849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 15)))
theorem cover_1473849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473849 := by
  apply coveredState_split_literal (state := state_1473849) 0
    state_1473850 state_1473917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473850
  · exact cover_1473917
#print axioms cover_1473849

def state_1471957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 7)))
theorem cover_1471957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471957 := by
  apply coveredState_split_literal (state := state_1471957) 4
    state_1471958 state_1473849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471958
  · exact cover_1473849
#print axioms cover_1471957

def state_1474087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 29)))
theorem cover_1474087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474087 := by
  apply coveredState_split_literal (state := state_1474087) 2
    state_1474088 state_1474145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474088
  · exact cover_1474145
#print axioms cover_1474087

def state_1474079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 29)))
theorem cover_1474079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474079 := by
  apply coveredState_split_literal (state := state_1474079) 1
    state_1474080 state_1474087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474080
  · exact cover_1474087
#print axioms cover_1474079

def state_1474179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 36 else (if j.val < 4 then 47 else 29)))
theorem cover_1474179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474179 := by
  apply coveredState_split_literal (state := state_1474179) 4
    state_1474180 state_1474217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474180
  · exact cover_1474217
#print axioms cover_1474179

def state_1474178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
theorem cover_1474178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474178 := by
  apply coveredState_split_literal (state := state_1474178) 2
    state_1474179 state_1474248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474179
  · exact cover_1474248
#print axioms cover_1474178

def state_1474152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
theorem cover_1474152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474152 := by
  apply coveredState_split_literal (state := state_1474152) 1
    state_1474153 state_1474178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474153
  · exact cover_1474178
#print axioms cover_1474152

def state_1474078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 29)))
theorem cover_1474078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474078 := by
  apply coveredState_split_literal (state := state_1474078) 3
    state_1474079 state_1474152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474079
  · exact cover_1474152
#print axioms cover_1474078

def state_1474319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
theorem cover_1474319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474319 := by
  apply coveredState_split_literal (state := state_1474319) 2
    state_1474320 state_1474353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474320
  · exact cover_1474353
#print axioms cover_1474319

def state_1474317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
theorem cover_1474317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474317 := by
  apply coveredState_split_literal (state := state_1474317) 1
    state_1474318 state_1474319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474318
  · exact cover_1474319
#print axioms cover_1474317

def state_1474281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 29)))
theorem cover_1474281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474281 := by
  apply coveredState_split_literal (state := state_1474281) 3
    state_1474282 state_1474317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474282
  · exact cover_1474317
#print axioms cover_1474281

def state_1474077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 29)))
theorem cover_1474077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474077 := by
  apply coveredState_split_literal (state := state_1474077) 0
    state_1474078 state_1474281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474078
  · exact cover_1474281
#print axioms cover_1474077

def state_1474021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 14)))
theorem cover_1474021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474021 := by
  apply coveredState_split_literal (state := state_1474021) 4
    state_1474022 state_1474077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474022
  · exact cover_1474077
#print axioms cover_1474021

def state_1474020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 14)))
theorem cover_1474020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474020 := by
  apply coveredState_split_literal (state := state_1474020) 2
    state_1474021 state_1474394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474021
  · exact cover_1474394
#print axioms cover_1474020
end Mub6.Numerical.CircleFullD0.Forest
