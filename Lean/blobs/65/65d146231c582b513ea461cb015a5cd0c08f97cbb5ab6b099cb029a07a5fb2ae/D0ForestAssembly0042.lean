import D0FullInterface
import D0ForestAssembly0040
import D0ForestAssembly0041
import D0ForestChunk0163
import D0ForestChunk0166
import D0ForestChunk0167
import D0ForestChunk0169
import D0ForestChunk0170
import D0ForestChunk0171
import D0ForestChunk0172
import D0ForestChunk0173
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_978125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 62 else (if j.val < 4 then 87 else 115)))
theorem cover_978125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978125 := by
  apply coveredState_split_literal (state := state_978125) 2
    state_978126 state_978127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978126
  · exact cover_978127
#print axioms cover_978125

def state_977971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 62 else (if j.val < 4 then 87 else 57)))
theorem cover_977971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977971 := by
  apply coveredState_split_literal (state := state_977971) 4
    state_977972 state_978125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977972
  · exact cover_978125
#print axioms cover_977971

def state_977739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_977739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977739 := by
  apply coveredState_split_literal (state := state_977739) 3
    state_977740 state_977971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977740
  · exact cover_977971
#print axioms cover_977739

def state_978274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 89) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_978274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978274 := by
  apply coveredState_split_literal (state := state_978274) 3
    state_978275 state_978306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978275
  · exact cover_978306
#print axioms cover_978274

def state_977738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 44) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_977738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977738 := by
  apply coveredState_split_literal (state := state_977738) 1
    state_977739 state_978274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977739
  · exact cover_978274
#print axioms cover_977738

def state_977622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
theorem cover_977622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977622 := by
  apply coveredState_split_literal (state := state_977622) 0
    state_977623 state_977738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977623
  · exact cover_977738
#print axioms cover_977622

def state_978499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 176) else (if j.val < 3 then 126 else (if j.val < 4 then 87 else 115)))
theorem cover_978499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978499 := by
  apply coveredState_split_literal (state := state_978499) 3
    state_978500 state_978535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978500
  · exact cover_978535
#print axioms cover_978499

def state_978498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 88) else (if j.val < 3 then 126 else (if j.val < 4 then 87 else 115)))
theorem cover_978498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978498 := by
  apply coveredState_split_literal (state := state_978498) 1
    state_978499 state_978576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978499
  · exact cover_978576
#print axioms cover_978498

def state_978590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 176) else (if j.val < 3 then 126 else (if j.val < 4 then 87 else 115)))
theorem cover_978590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978590 := by
  apply coveredState_split_literal (state := state_978590) 3
    state_978591 state_978632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978591
  · exact cover_978632
#print axioms cover_978590

def state_978685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 177) else (if j.val < 3 then 126 else (if j.val < 4 then 87 else 115)))
theorem cover_978685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978685 := by
  apply coveredState_split_literal (state := state_978685) 3
    state_978686 state_978701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978686
  · exact cover_978701
#print axioms cover_978685

def state_978589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 88) else (if j.val < 3 then 126 else (if j.val < 4 then 87 else 115)))
theorem cover_978589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978589 := by
  apply coveredState_split_literal (state := state_978589) 1
    state_978590 state_978685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978590
  · exact cover_978685
#print axioms cover_978589

def state_978497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 126 else (if j.val < 4 then 87 else 115)))
theorem cover_978497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978497 := by
  apply coveredState_split_literal (state := state_978497) 0
    state_978498 state_978589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978498
  · exact cover_978589
#print axioms cover_978497

def state_978496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 63 else (if j.val < 4 then 87 else 115)))
theorem cover_978496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978496 := by
  apply coveredState_split_literal (state := state_978496) 2
    state_978497 state_978750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978497
  · exact cover_978750
#print axioms cover_978496

def state_978438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 63 else (if j.val < 4 then 87 else 57)))
theorem cover_978438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978438 := by
  apply coveredState_split_literal (state := state_978438) 4
    state_978439 state_978496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978439
  · exact cover_978496
#print axioms cover_978438

def state_978404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
theorem cover_978404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978404 := by
  apply coveredState_split_literal (state := state_978404) 3
    state_978405 state_978438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978405
  · exact cover_978438
#print axioms cover_978404

def state_978403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
theorem cover_978403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978403 := by
  apply coveredState_split_literal (state := state_978403) 1
    state_978404 state_978751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978404
  · exact cover_978751
#print axioms cover_978403

def state_978347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
theorem cover_978347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978347 := by
  apply coveredState_split_literal (state := state_978347) 0
    state_978348 state_978403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978348
  · exact cover_978403
#print axioms cover_978347

def state_977621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 57)))
theorem cover_977621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977621 := by
  apply coveredState_split_literal (state := state_977621) 2
    state_977622 state_978347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977622
  · exact cover_978347
#print axioms cover_977621

def state_977579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 28)))
theorem cover_977579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977579 := by
  apply coveredState_split_literal (state := state_977579) 4
    state_977580 state_977621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977580
  · exact cover_977621
#print axioms cover_977579

def state_977521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_977521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977521 := by
  apply coveredState_split_literal (state := state_977521) 3
    state_977522 state_977579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977522
  · exact cover_977579
#print axioms cover_977521

def state_977520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_977520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977520 := by
  apply coveredState_split_literal (state := state_977520) 1
    state_977521 state_978788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977521
  · exact cover_978788
#print axioms cover_977520

def state_977484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_977484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977484 := by
  apply coveredState_split_literal (state := state_977484) 0
    state_977485 state_977520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977485
  · exact cover_977520
#print axioms cover_977484

def state_976744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 28)))
theorem cover_976744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976744 := by
  apply coveredState_split_literal (state := state_976744) 2
    state_976745 state_977484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976745
  · exact cover_977484
#print axioms cover_976744

def state_978817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 29)))
theorem cover_978817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978817 := by
  apply coveredState_split_literal (state := state_978817) 2
    state_978818 state_978847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_978818
  · exact cover_978847
#print axioms cover_978817

def state_976743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 14)))
theorem cover_976743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976743 := by
  apply coveredState_split_literal (state := state_976743) 4
    state_976744 state_978817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976744
  · exact cover_978817
#print axioms cover_976743

def state_976657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_976657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976657 := by
  apply coveredState_split_literal (state := state_976657) 3
    state_976658 state_976743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976658
  · exact cover_976743
#print axioms cover_976657

def state_976656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_976656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976656 := by
  apply coveredState_split_literal (state := state_976656) 1
    state_976657 state_978904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976657
  · exact cover_978904
#print axioms cover_976656

def state_976634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_976634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976634 := by
  apply coveredState_split_literal (state := state_976634) 0
    state_976635 state_976656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976635
  · exact cover_976656
#print axioms cover_976634

def state_976633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 7)))
theorem cover_976633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976633 := by
  apply coveredState_split_literal (state := state_976633) 4
    state_976634 state_978939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976634
  · exact cover_978939
#print axioms cover_976633

def state_975885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_975885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975885 := by
  apply coveredState_split_literal (state := state_975885) 2
    state_975886 state_976633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975886
  · exact cover_976633
#print axioms cover_975885

def state_979059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 57)))
theorem cover_979059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979059 := by
  apply coveredState_split_literal (state := state_979059) 3
    state_979060 state_979115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979060
  · exact cover_979115
#print axioms cover_979059

def state_979058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 57)))
theorem cover_979058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979058 := by
  apply coveredState_split_literal (state := state_979058) 1
    state_979059 state_979130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979059
  · exact cover_979130
#print axioms cover_979058
end Mub6.Numerical.CircleFullD0.Forest
