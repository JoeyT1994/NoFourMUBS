import CircleFullInterface
import CircleForestAssembly0007
import CircleForestChunk0040
import CircleForestChunk0041
import CircleForestChunk0042
import CircleForestChunk0043
import CircleForestChunk0044
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_388561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
theorem cover_388561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388561 := by
  apply coveredState_split_literal (state := state_388561) 0
    state_388562 state_389191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388562
  · exact cover_389191
#print axioms cover_388561

def state_388560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_388560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388560 := by
  apply coveredState_split_literal (state := state_388560) 3
    state_388561 state_389734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388561
  · exact cover_389734
#print axioms cover_388560

def state_388559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_388559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388559 := by
  apply coveredState_split_literal (state := state_388559) 1
    state_388560 state_389767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388560
  · exact cover_389767
#print axioms cover_388559

def state_388527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_388527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388527 := by
  apply coveredState_split_literal (state := state_388527) 4
    state_388528 state_388559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388528
  · exact cover_388559
#print axioms cover_388527

def state_388526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_388526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388526 := by
  apply coveredState_split_literal (state := state_388526) 2
    state_388527 state_389810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388527
  · exact cover_389810
#print axioms cover_388526

def state_388525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_388525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388525 := by
  apply coveredState_split_literal (state := state_388525) 0
    state_388526 state_389889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388526
  · exact cover_389889
#print axioms cover_388525

def state_388515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_388515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388515 := by
  apply coveredState_split_literal (state := state_388515) 4
    state_388516 state_388525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388516
  · exact cover_388525
#print axioms cover_388515

def state_388291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_388291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388291 := by
  apply coveredState_split_literal (state := state_388291) 3
    state_388292 state_388515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388292
  · exact cover_388515
#print axioms cover_388291

def state_388290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_388290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388290 := by
  apply coveredState_split_literal (state := state_388290) 2
    state_388291 state_389972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388291
  · exact cover_389972
#print axioms cover_388290

def state_387724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_387724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387724 := by
  apply coveredState_split_literal (state := state_387724) 1
    state_387725 state_388290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387725
  · exact cover_388290
#print axioms cover_387724

def state_387723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_387723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387723 := by
  apply coveredState_split_literal (state := state_387723) 0
    state_387724 state_390009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387724
  · exact cover_390009
#print axioms cover_387723

def state_390792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_390792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390792 := by
  apply coveredState_split_literal (state := state_390792) 0
    state_390793 state_391212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390793
  · exact cover_391212
#print axioms cover_390792

def state_390791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_390791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390791 := by
  apply coveredState_split_literal (state := state_390791) 3
    state_390792 state_391959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390792
  · exact cover_391959
#print axioms cover_390791

def state_390790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_390790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390790 := by
  apply coveredState_split_literal (state := state_390790) 1
    state_390791 state_391992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390791
  · exact cover_391992
#print axioms cover_390790

def state_390789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_390789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390789 := by
  apply coveredState_split_literal (state := state_390789) 4
    state_390790 state_392029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390790
  · exact cover_392029
#print axioms cover_390789

def state_390788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_390788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390788 := by
  apply coveredState_split_literal (state := state_390788) 2
    state_390789 state_392050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390789
  · exact cover_392050
#print axioms cover_390788

def state_390787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_390787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390787 := by
  apply coveredState_split_literal (state := state_390787) 0
    state_390788 state_392211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390788
  · exact cover_392211
#print axioms cover_390787

def state_390786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_390786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390786 := by
  apply coveredState_split_literal (state := state_390786) 4
    state_390787 state_392440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390787
  · exact cover_392440
#print axioms cover_390786

def state_390538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_390538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390538 := by
  apply coveredState_split_literal (state := state_390538) 3
    state_390539 state_390786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390539
  · exact cover_390786
#print axioms cover_390538

def state_390537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_390537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390537 := by
  apply coveredState_split_literal (state := state_390537) 2
    state_390538 state_392447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390538
  · exact cover_392447
#print axioms cover_390537

def state_390119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_390119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390119 := by
  apply coveredState_split_literal (state := state_390119) 1
    state_390120 state_390537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390120
  · exact cover_390537
#print axioms cover_390119

def state_390118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_390118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390118 := by
  apply coveredState_split_literal (state := state_390118) 0
    state_390119 state_392590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390119
  · exact cover_392590
#print axioms cover_390118

def state_387722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_387722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387722 := by
  apply coveredState_split_literal (state := state_387722) 4
    state_387723 state_390118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387723
  · exact cover_390118
#print axioms cover_387722

def state_387554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_387554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387554 := by
  apply coveredState_split_literal (state := state_387554) 3
    state_387555 state_387722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387555
  · exact cover_387722
#print axioms cover_387554

def state_385294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_385294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385294 := by
  apply coveredState_split_literal (state := state_385294) 2
    state_385295 state_387554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385295
  · exact cover_387554
#print axioms cover_385294

def state_384162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_384162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384162 := by
  apply coveredState_split_literal (state := state_384162) 1
    state_384163 state_385294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384163
  · exact cover_385294
#print axioms cover_384162

def state_371972 : State := rootState
theorem cover_371972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371972 := by
  apply coveredState_split_literal (state := state_371972) 0
    state_371973 state_384162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371973
  · exact cover_384162
#print axioms cover_371972

def state_760124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_760124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760124 := by
  apply coveredState_split_literal (state := state_760124) 3
    state_760125 state_760884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_760125
  · exact cover_760884
#print axioms cover_760124

def state_759586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_759586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759586 := by
  apply coveredState_split_literal (state := state_759586) 2
    state_759587 state_760124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759587
  · exact cover_760124
#print axioms cover_759586

def state_761792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_761792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761792 := by
  apply coveredState_split_literal (state := state_761792) 4
    state_761793 state_762454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761793
  · exact cover_762454
#print axioms cover_761792

def state_761620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_761620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761620 := by
  apply coveredState_split_literal (state := state_761620) 3
    state_761621 state_761792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761621
  · exact cover_761792
#print axioms cover_761620

def state_761619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_761619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761619 := by
  apply coveredState_split_literal (state := state_761619) 2
    state_761620 state_763123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761620
  · exact cover_763123
#print axioms cover_761619

def state_759585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_759585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759585 := by
  apply coveredState_split_literal (state := state_759585) 1
    state_759586 state_761619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759586
  · exact cover_761619
#print axioms cover_759585

def state_764020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_764020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764020 := by
  apply coveredState_split_literal (state := state_764020) 3
    state_764021 state_764786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764021
  · exact cover_764786
#print axioms cover_764020

def state_764019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_764019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764019 := by
  apply coveredState_split_literal (state := state_764019) 2
    state_764020 state_765511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764020
  · exact cover_765511
#print axioms cover_764019

def state_767280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_767280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767280 := by
  apply coveredState_split_literal (state := state_767280) 3
    state_767281 state_768020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767281
  · exact cover_768020
#print axioms cover_767280

def state_766396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_766396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766396 := by
  apply coveredState_split_literal (state := state_766396) 2
    state_766397 state_767280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766397
  · exact cover_767280
#print axioms cover_766396

def state_764018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_764018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764018 := by
  apply coveredState_split_literal (state := state_764018) 1
    state_764019 state_766396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764019
  · exact cover_766396
#print axioms cover_764018

def state_759584 : State := rootState
theorem cover_759584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759584 := by
  apply coveredState_split_literal (state := state_759584) 0
    state_759585 state_764018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759585
  · exact cover_764018
#print axioms cover_759584
end Mub6.Numerical.CircleFullPrototype.Forest
