import D0FullInterface
import D0ForestAssembly0393
import D0ForestChunk1532
import D0ForestChunk1533
import D0ForestChunk1534
import D0ForestChunk1535
import D0ForestChunk1536
import D0ForestChunk1537
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2241425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 8)))
theorem cover_2241425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241425 := by
  apply coveredState_split_literal (state := state_2241425) 3
    state_2241426 state_2241493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241426
  · exact cover_2241493
#print axioms cover_2241425

def state_2241423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 8)))
theorem cover_2241423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241423 := by
  apply coveredState_split_literal (state := state_2241423) 2
    state_2241424 state_2241425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241424
  · exact cover_2241425
#print axioms cover_2241423

def state_2241422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 8)))
theorem cover_2241422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241422 := by
  apply coveredState_split_literal (state := state_2241422) 1
    state_2241423 state_2241508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241423
  · exact cover_2241508
#print axioms cover_2241422

def state_2241421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 8)))
theorem cover_2241421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241421 := by
  apply coveredState_split_literal (state := state_2241421) 0
    state_2241422 state_2241509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241422
  · exact cover_2241509
#print axioms cover_2241421

def state_2241420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 4)))
theorem cover_2241420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241420 := by
  apply coveredState_split_literal (state := state_2241420) 4
    state_2241421 state_2241518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241421
  · exact cover_2241518
#print axioms cover_2241420

def state_2241419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 4)))
theorem cover_2241419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241419 := by
  apply coveredState_split_literal (state := state_2241419) 3
    state_2241420 state_2241521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241420
  · exact cover_2241521
#print axioms cover_2241419

def state_2241546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 88) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 32)))
theorem cover_2241546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241546 := by
  apply coveredState_split_literal (state := state_2241546) 2
    state_2241547 state_2241606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241547
  · exact cover_2241606
#print axioms cover_2241546

def state_2241545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 32)))
theorem cover_2241545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241545 := by
  apply coveredState_split_literal (state := state_2241545) 1
    state_2241546 state_2241641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241546
  · exact cover_2241641
#print axioms cover_2241545

def state_2241693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 88) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 32)))
theorem cover_2241693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241693 := by
  apply coveredState_split_literal (state := state_2241693) 2
    state_2241694 state_2241731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241694
  · exact cover_2241731
#print axioms cover_2241693

def state_2241766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 89) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 32)))
theorem cover_2241766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241766 := by
  apply coveredState_split_literal (state := state_2241766) 2
    state_2241767 state_2241786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241767
  · exact cover_2241786
#print axioms cover_2241766

def state_2241692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 32)))
theorem cover_2241692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241692 := by
  apply coveredState_split_literal (state := state_2241692) 1
    state_2241693 state_2241766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241693
  · exact cover_2241766
#print axioms cover_2241692

def state_2241544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 32)))
theorem cover_2241544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241544 := by
  apply coveredState_split_literal (state := state_2241544) 0
    state_2241545 state_2241692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241545
  · exact cover_2241692
#print axioms cover_2241544

def state_2241543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 16)))
theorem cover_2241543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241543 := by
  apply coveredState_split_literal (state := state_2241543) 4
    state_2241544 state_2241837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241544
  · exact cover_2241837
#print axioms cover_2241543

def state_2241898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 16)))
theorem cover_2241898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241898 := by
  apply coveredState_split_literal (state := state_2241898) 4
    state_2241899 state_2241958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241899
  · exact cover_2241958
#print axioms cover_2241898

def state_2241542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 16)))
theorem cover_2241542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241542 := by
  apply coveredState_split_literal (state := state_2241542) 3
    state_2241543 state_2241898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241543
  · exact cover_2241898
#print axioms cover_2241542

def state_2241541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
theorem cover_2241541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241541 := by
  apply coveredState_split_literal (state := state_2241541) 2
    state_2241542 state_2241979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241542
  · exact cover_2241979
#print axioms cover_2241541

def state_2241540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
theorem cover_2241540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241540 := by
  apply coveredState_split_literal (state := state_2241540) 1
    state_2241541 state_2242024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241541
  · exact cover_2242024
#print axioms cover_2241540

def state_2242066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
theorem cover_2242066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242066 := by
  apply coveredState_split_literal (state := state_2242066) 2
    state_2242067 state_2242108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242067
  · exact cover_2242108
#print axioms cover_2242066

def state_2242065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
theorem cover_2242065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242065 := by
  apply coveredState_split_literal (state := state_2242065) 1
    state_2242066 state_2242131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242066
  · exact cover_2242131
#print axioms cover_2242065

def state_2241539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
theorem cover_2241539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241539 := by
  apply coveredState_split_literal (state := state_2241539) 0
    state_2241540 state_2242065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241540
  · exact cover_2242065
#print axioms cover_2241539

def state_2241538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 8)))
theorem cover_2241538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241538 := by
  apply coveredState_split_literal (state := state_2241538) 4
    state_2241539 state_2242160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241539
  · exact cover_2242160
#print axioms cover_2241538

def state_2242209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 8)))
theorem cover_2242209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242209 := by
  apply coveredState_split_literal (state := state_2242209) 4
    state_2242210 state_2242257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2242210
  · exact cover_2242257
#print axioms cover_2242209

def state_2241537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 8)))
theorem cover_2241537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241537 := by
  apply coveredState_split_literal (state := state_2241537) 3
    state_2241538 state_2242209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241538
  · exact cover_2242209
#print axioms cover_2241537

def state_2241536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
theorem cover_2241536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241536 := by
  apply coveredState_split_literal (state := state_2241536) 2
    state_2241537 state_2242274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241537
  · exact cover_2242274
#print axioms cover_2241536

def state_2241535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
theorem cover_2241535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241535 := by
  apply coveredState_split_literal (state := state_2241535) 1
    state_2241536 state_2242305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241536
  · exact cover_2242305
#print axioms cover_2241535

def state_2241534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
theorem cover_2241534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241534 := by
  apply coveredState_split_literal (state := state_2241534) 0
    state_2241535 state_2242340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241535
  · exact cover_2242340
#print axioms cover_2241534

def state_2241533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 4)))
theorem cover_2241533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241533 := by
  apply coveredState_split_literal (state := state_2241533) 4
    state_2241534 state_2242399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241534
  · exact cover_2242399
#print axioms cover_2241533

def state_2241532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 4)))
theorem cover_2241532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241532 := by
  apply coveredState_split_literal (state := state_2241532) 3
    state_2241533 state_2242436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241533
  · exact cover_2242436
#print axioms cover_2241532

def state_2241418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2241418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241418 := by
  apply coveredState_split_literal (state := state_2241418) 2
    state_2241419 state_2241532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241419
  · exact cover_2241532
#print axioms cover_2241418

def state_2241240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2241240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241240 := by
  apply coveredState_split_literal (state := state_2241240) 1
    state_2241241 state_2241418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241241
  · exact cover_2241418
#print axioms cover_2241240

def state_2240966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2240966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240966 := by
  apply coveredState_split_literal (state := state_2240966) 0
    state_2240967 state_2241240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240967
  · exact cover_2241240
#print axioms cover_2240966

def state_2240965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_2240965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240965 := by
  apply coveredState_split_literal (state := state_2240965) 4
    state_2240966 state_2242477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240966
  · exact cover_2242477
#print axioms cover_2240965
end Mub6.Numerical.CircleFullD0.Forest
