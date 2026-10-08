import D0FullInterface
import D0ForestAssembly0003
import D0ForestChunk0005
import D0ForestChunk0008
import D0ForestChunk0009
import D0ForestChunk0010
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1008534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_1008534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008534 := by
  apply coveredState_split_literal (state := state_1008534) 4
    state_1008535 state_1008556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008535
  · exact cover_1008556
#print axioms cover_1008534

def state_1008533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_1008533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008533 := by
  apply coveredState_split_literal (state := state_1008533) 3
    state_1008534 state_1012985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008534
  · exact cover_1012985
#print axioms cover_1008533

def state_1013897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_1013897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013897 := by
  apply coveredState_split_literal (state := state_1013897) 2
    state_1013898 state_1014023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013898
  · exact cover_1014023
#print axioms cover_1013897

def state_1013855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_1013855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013855 := by
  apply coveredState_split_literal (state := state_1013855) 0
    state_1013856 state_1013897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013856
  · exact cover_1013897
#print axioms cover_1013855

def state_1013455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_1013455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013455 := by
  apply coveredState_split_literal (state := state_1013455) 3
    state_1013456 state_1013855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013456
  · exact cover_1013855
#print axioms cover_1013455

def state_1013454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_1013454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013454 := by
  apply coveredState_split_literal (state := state_1013454) 1
    state_1013455 state_1014988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013455
  · exact cover_1014988
#print axioms cover_1013454

def state_1016711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_1016711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016711 := by
  apply coveredState_split_literal (state := state_1016711) 3
    state_1016712 state_1017437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016712
  · exact cover_1017437
#print axioms cover_1016711

def state_1016669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_1016669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016669 := by
  apply coveredState_split_literal (state := state_1016669) 1
    state_1016670 state_1016711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016670
  · exact cover_1016711
#print axioms cover_1016669

def state_1016611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 44)))
theorem cover_1016611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016611 := by
  apply coveredState_split_literal (state := state_1016611) 2
    state_1016612 state_1016669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016612
  · exact cover_1016669
#print axioms cover_1016611

def state_1016610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_1016610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016610 := by
  apply coveredState_split_literal (state := state_1016610) 4
    state_1016611 state_1017878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016611
  · exact cover_1017878
#print axioms cover_1016610

def state_1016574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_1016574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016574 := by
  apply coveredState_split_literal (state := state_1016574) 0
    state_1016575 state_1016610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016575
  · exact cover_1016610
#print axioms cover_1016574

def state_1015834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_1015834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015834 := by
  apply coveredState_split_literal (state := state_1015834) 3
    state_1015835 state_1016574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015835
  · exact cover_1016574
#print axioms cover_1015834

def state_1015833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_1015833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015833 := by
  apply coveredState_split_literal (state := state_1015833) 1
    state_1015834 state_1017907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015834
  · exact cover_1017907
#print axioms cover_1015833

def state_1015747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 22)))
theorem cover_1015747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015747 := by
  apply coveredState_split_literal (state := state_1015747) 2
    state_1015748 state_1015833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015748
  · exact cover_1015833
#print axioms cover_1015747

def state_1015746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_1015746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015746 := by
  apply coveredState_split_literal (state := state_1015746) 4
    state_1015747 state_1017994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015747
  · exact cover_1017994
#print axioms cover_1015746

def state_1015724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_1015724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015724 := by
  apply coveredState_split_literal (state := state_1015724) 0
    state_1015725 state_1015746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015725
  · exact cover_1015746
#print axioms cover_1015724

def state_1015002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_1015002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015002 := by
  apply coveredState_split_literal (state := state_1015002) 3
    state_1015003 state_1015724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015003
  · exact cover_1015724
#print axioms cover_1015002

def state_1015001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_1015001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015001 := by
  apply coveredState_split_literal (state := state_1015001) 1
    state_1015002 state_1018029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015002
  · exact cover_1018029
#print axioms cover_1015001

def state_1013453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_1013453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013453 := by
  apply coveredState_split_literal (state := state_1013453) 4
    state_1013454 state_1015001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013454
  · exact cover_1015001
#print axioms cover_1013453

def state_1013452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1013452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013452 := by
  apply coveredState_split_literal (state := state_1013452) 2
    state_1013453 state_1018066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013453
  · exact cover_1018066
#print axioms cover_1013452

def state_1013412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1013412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013412 := by
  apply coveredState_split_literal (state := state_1013412) 0
    state_1013413 state_1013452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013413
  · exact cover_1013452
#print axioms cover_1013412

def state_1013386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_1013386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013386 := by
  apply coveredState_split_literal (state := state_1013386) 4
    state_1013387 state_1013412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013387
  · exact cover_1013412
#print axioms cover_1013386

def state_1013286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1013286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013286 := by
  apply coveredState_split_literal (state := state_1013286) 3
    state_1013287 state_1013386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013287
  · exact cover_1013386
#print axioms cover_1013286

def state_1008532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1008532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008532 := by
  apply coveredState_split_literal (state := state_1008532) 2
    state_1008533 state_1013286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008533
  · exact cover_1013286
#print axioms cover_1008532

def state_980302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_980302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980302 := by
  apply coveredState_split_literal (state := state_980302) 1
    state_980303 state_1008532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980303
  · exact cover_1008532
#print axioms cover_980302

def state_980172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_980172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980172 := by
  apply coveredState_split_literal (state := state_980172) 0
    state_980173 state_980302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980173
  · exact cover_980302
#print axioms cover_980172

def state_1021464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
theorem cover_1021464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021464 := by
  apply coveredState_split_literal (state := state_1021464) 2
    state_1021465 state_1021580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021465
  · exact cover_1021580
#print axioms cover_1021464

def state_1022639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1022639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022639 := by
  apply coveredState_split_literal (state := state_1022639) 1
    state_1022640 state_1023477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022640
  · exact cover_1023477
#print axioms cover_1022639

def state_1022577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 51)))
theorem cover_1022577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022577 := by
  apply coveredState_split_literal (state := state_1022577) 2
    state_1022578 state_1022639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022578
  · exact cover_1022639
#print axioms cover_1022577

def state_1021463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1021463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021463 := by
  apply coveredState_split_literal (state := state_1021463) 4
    state_1021464 state_1022577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021464
  · exact cover_1022577
#print axioms cover_1021463

def state_1021343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1021343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021343 := by
  apply coveredState_split_literal (state := state_1021343) 3
    state_1021344 state_1021463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021344
  · exact cover_1021463
#print axioms cover_1021343

def state_1021257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1021257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021257 := by
  apply coveredState_split_literal (state := state_1021257) 0
    state_1021258 state_1021343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021258
  · exact cover_1021343
#print axioms cover_1021257

def state_1020453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1020453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020453 := by
  apply coveredState_split_literal (state := state_1020453) 1
    state_1020454 state_1021257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020454
  · exact cover_1021257
#print axioms cover_1020453

def state_1020452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 25)))
theorem cover_1020452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020452 := by
  apply coveredState_split_literal (state := state_1020452) 2
    state_1020453 state_1024420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020453
  · exact cover_1024420
#print axioms cover_1020452

def state_1019792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1019792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019792 := by
  apply coveredState_split_literal (state := state_1019792) 4
    state_1019793 state_1020452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019793
  · exact cover_1020452
#print axioms cover_1019792

def state_1019752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1019752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019752 := by
  apply coveredState_split_literal (state := state_1019752) 3
    state_1019753 state_1019792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019753
  · exact cover_1019792
#print axioms cover_1019752

def state_1019684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1019684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019684 := by
  apply coveredState_split_literal (state := state_1019684) 0
    state_1019685 state_1019752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019685
  · exact cover_1019752
#print axioms cover_1019684

def state_1019428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1019428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019428 := by
  apply coveredState_split_literal (state := state_1019428) 2
    state_1019429 state_1019684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1019429
  · exact cover_1019684
#print axioms cover_1019428

def state_1018716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1018716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018716 := by
  apply coveredState_split_literal (state := state_1018716) 1
    state_1018717 state_1019428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018717
  · exact cover_1019428
#print axioms cover_1018716

def state_1018715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1018715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018715 := by
  apply coveredState_split_literal (state := state_1018715) 4
    state_1018716 state_1024929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018716
  · exact cover_1024929
#print axioms cover_1018715

def state_1026366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 25)))
theorem cover_1026366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026366 := by
  apply coveredState_split_literal (state := state_1026366) 2
    state_1026367 state_1027114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026367
  · exact cover_1027114
#print axioms cover_1026366

def state_1026365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 25)))
theorem cover_1026365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026365 := by
  apply coveredState_split_literal (state := state_1026365) 3
    state_1026366 state_1027717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026366
  · exact cover_1027717
#print axioms cover_1026365

def state_1025857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1025857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025857 := by
  apply coveredState_split_literal (state := state_1025857) 4
    state_1025858 state_1026365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025858
  · exact cover_1026365
#print axioms cover_1025857

def state_1025839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1025839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025839 := by
  apply coveredState_split_literal (state := state_1025839) 0
    state_1025840 state_1025857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025840
  · exact cover_1025857
#print axioms cover_1025839

def state_1025769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1025769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025769 := by
  apply coveredState_split_literal (state := state_1025769) 2
    state_1025770 state_1025839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025770
  · exact cover_1025839
#print axioms cover_1025769

def state_1025167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1025167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025167 := by
  apply coveredState_split_literal (state := state_1025167) 1
    state_1025168 state_1025769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025168
  · exact cover_1025769
#print axioms cover_1025167

def state_1025166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_1025166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025166 := by
  apply coveredState_split_literal (state := state_1025166) 4
    state_1025167 state_1027730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025167
  · exact cover_1027730
#print axioms cover_1025166

def state_1018714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1018714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018714 := by
  apply coveredState_split_literal (state := state_1018714) 3
    state_1018715 state_1025166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018715
  · exact cover_1025166
#print axioms cover_1018714

def state_1018664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1018664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018664 := by
  apply coveredState_split_literal (state := state_1018664) 0
    state_1018665 state_1018714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018665
  · exact cover_1018714
#print axioms cover_1018664

def state_1018663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1018663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018663 := by
  apply coveredState_split_literal (state := state_1018663) 4
    state_1018664 state_1027897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018664
  · exact cover_1027897
#print axioms cover_1018663

def state_1018662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1018662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018662 := by
  apply coveredState_split_literal (state := state_1018662) 3
    state_1018663 state_1027910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018663
  · exact cover_1027910
#print axioms cover_1018662

def state_1018661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1018661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018661 := by
  apply coveredState_split_literal (state := state_1018661) 2
    state_1018662 state_1027939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018662
  · exact cover_1027939
#print axioms cover_1018661

def state_1018551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1018551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018551 := by
  apply coveredState_split_literal (state := state_1018551) 1
    state_1018552 state_1018661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018552
  · exact cover_1018661
#print axioms cover_1018551

def state_1018515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1018515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018515 := by
  apply coveredState_split_literal (state := state_1018515) 0
    state_1018516 state_1018551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018516
  · exact cover_1018551
#print axioms cover_1018515

def state_980171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_980171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980171 := by
  apply coveredState_split_literal (state := state_980171) 4
    state_980172 state_1018515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980172
  · exact cover_1018515
#print axioms cover_980171

def state_979559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_979559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979559 := by
  apply coveredState_split_literal (state := state_979559) 3
    state_979560 state_980171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979560
  · exact cover_980171
#print axioms cover_979559

def state_1031194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 31)))
theorem cover_1031194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031194 := by
  apply coveredState_split_literal (state := state_1031194) 3
    state_1031195 state_1031310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031195
  · exact cover_1031310
#print axioms cover_1031194

def state_1031154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1031154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031154 := by
  apply coveredState_split_literal (state := state_1031154) 2
    state_1031155 state_1031194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031155
  · exact cover_1031194
#print axioms cover_1031154

def state_1032445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 31)))
theorem cover_1032445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032445 := by
  apply coveredState_split_literal (state := state_1032445) 4
    state_1032446 state_1033283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032446
  · exact cover_1033283
#print axioms cover_1032445

def state_1032383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 31)))
theorem cover_1032383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032383 := by
  apply coveredState_split_literal (state := state_1032383) 3
    state_1032384 state_1032445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032384
  · exact cover_1032445
#print axioms cover_1032383

def state_1032307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1032307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032307 := by
  apply coveredState_split_literal (state := state_1032307) 2
    state_1032308 state_1032383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032308
  · exact cover_1032383
#print axioms cover_1032307

def state_1031153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1031153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031153 := by
  apply coveredState_split_literal (state := state_1031153) 1
    state_1031154 state_1032307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031154
  · exact cover_1032307
#print axioms cover_1031153

def state_1031071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1031071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031071 := by
  apply coveredState_split_literal (state := state_1031071) 0
    state_1031072 state_1031153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031072
  · exact cover_1031153
#print axioms cover_1031071

def state_1030267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 15)))
theorem cover_1030267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030267 := by
  apply coveredState_split_literal (state := state_1030267) 4
    state_1030268 state_1031071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030268
  · exact cover_1031071
#print axioms cover_1030267
end Mub6.Numerical.CircleFullD0.Forest
