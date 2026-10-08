import D0FullInterface
import D0ForestAssembly0047
import D0ForestAssembly0051
import D0ForestAssembly0052
import D0ForestChunk0206
import D0ForestChunk0207
import D0ForestChunk0212
import D0ForestChunk0215
import D0ForestChunk0216
import D0ForestChunk0217
import D0ForestChunk0218
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_988897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 86)))
theorem cover_988897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988897 := by
  apply coveredState_split_literal (state := state_988897) 3
    state_988898 state_988997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988898
  · exact cover_988997
#print axioms cover_988897

def state_988667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 86)))
theorem cover_988667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988667 := by
  apply coveredState_split_literal (state := state_988667) 0
    state_988668 state_988897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988668
  · exact cover_988897
#print axioms cover_988667

def state_988666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 86)))
theorem cover_988666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988666 := by
  apply coveredState_split_literal (state := state_988666) 2
    state_988667 state_989076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988667
  · exact cover_989076
#print axioms cover_988666

def state_988665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 86)))
theorem cover_988665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988665 := by
  apply coveredState_split_literal (state := state_988665) 1
    state_988666 state_989121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988666
  · exact cover_989121
#print axioms cover_988665

def state_989152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 87)))
theorem cover_989152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989152 := by
  apply coveredState_split_literal (state := state_989152) 0
    state_989153 state_989188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989153
  · exact cover_989188
#print axioms cover_989152

def state_989151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 87)))
theorem cover_989151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989151 := by
  apply coveredState_split_literal (state := state_989151) 2
    state_989152 state_989245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989152
  · exact cover_989245
#print axioms cover_989151

def state_989298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 87)))
theorem cover_989298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989298 := by
  apply coveredState_split_literal (state := state_989298) 4
    state_989299 state_989342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989299
  · exact cover_989342
#print axioms cover_989298

def state_989297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 87)))
theorem cover_989297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989297 := by
  apply coveredState_split_literal (state := state_989297) 3
    state_989298 state_989393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989298
  · exact cover_989393
#print axioms cover_989297

def state_989263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 87)))
theorem cover_989263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989263 := by
  apply coveredState_split_literal (state := state_989263) 0
    state_989264 state_989297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989264
  · exact cover_989297
#print axioms cover_989263

def state_989262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 87)))
theorem cover_989262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989262 := by
  apply coveredState_split_literal (state := state_989262) 2
    state_989263 state_989394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989263
  · exact cover_989394
#print axioms cover_989262

def state_989150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 87)))
theorem cover_989150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989150 := by
  apply coveredState_split_literal (state := state_989150) 1
    state_989151 state_989262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989151
  · exact cover_989262
#print axioms cover_989150

def state_988664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 43)))
theorem cover_988664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988664 := by
  apply coveredState_split_literal (state := state_988664) 4
    state_988665 state_989150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988665
  · exact cover_989150
#print axioms cover_988664

def state_988564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 43)))
theorem cover_988564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988564 := by
  apply coveredState_split_literal (state := state_988564) 3
    state_988565 state_988664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988565
  · exact cover_988664
#print axioms cover_988564

def state_988504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 43)))
theorem cover_988504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988504 := by
  apply coveredState_split_literal (state := state_988504) 0
    state_988505 state_988564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988505
  · exact cover_988564
#print axioms cover_988504

def state_987690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 43)))
theorem cover_987690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987690 := by
  apply coveredState_split_literal (state := state_987690) 2
    state_987691 state_988504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987691
  · exact cover_988504
#print axioms cover_987690

def state_987689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 43)))
theorem cover_987689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987689 := by
  apply coveredState_split_literal (state := state_987689) 1
    state_987690 state_989409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987690
  · exact cover_989409
#print axioms cover_987689

def state_987399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
theorem cover_987399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987399 := by
  apply coveredState_split_literal (state := state_987399) 4
    state_987400 state_987689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987400
  · exact cover_987689
#print axioms cover_987399

def state_987243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_987243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987243 := by
  apply coveredState_split_literal (state := state_987243) 3
    state_987244 state_987399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987244
  · exact cover_987399
#print axioms cover_987243

def state_987197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_987197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987197 := by
  apply coveredState_split_literal (state := state_987197) 0
    state_987198 state_987243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987198
  · exact cover_987243
#print axioms cover_987197

def state_987039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 21)))
theorem cover_987039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987039 := by
  apply coveredState_split_literal (state := state_987039) 2
    state_987040 state_987197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987040
  · exact cover_987197
#print axioms cover_987039

def state_987003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_987003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987003 := by
  apply coveredState_split_literal (state := state_987003) 4
    state_987004 state_987039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987004
  · exact cover_987039
#print axioms cover_987003

def state_982633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_982633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982633 := by
  apply coveredState_split_literal (state := state_982633) 1
    state_982634 state_987003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982634
  · exact cover_987003
#print axioms cover_982633

def state_982033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
theorem cover_982033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982033 := by
  apply coveredState_split_literal (state := state_982033) 3
    state_982034 state_982633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982034
  · exact cover_982633
#print axioms cover_982033

def state_989463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 10)))
theorem cover_989463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989463 := by
  apply coveredState_split_literal (state := state_989463) 1
    state_989464 state_989525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989464
  · exact cover_989525
#print axioms cover_989463

def state_989568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 20)))
theorem cover_989568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989568 := by
  apply coveredState_split_literal (state := state_989568) 2
    state_989569 state_989630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989569
  · exact cover_989630
#print axioms cover_989568

def state_989793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 42)))
theorem cover_989793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989793 := by
  apply coveredState_split_literal (state := state_989793) 2
    state_989794 state_989849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989794
  · exact cover_989849
#print axioms cover_989793

def state_989792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
theorem cover_989792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989792 := by
  apply coveredState_split_literal (state := state_989792) 4
    state_989793 state_989868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989793
  · exact cover_989868
#print axioms cover_989792

def state_989778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
theorem cover_989778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989778 := by
  apply coveredState_split_literal (state := state_989778) 1
    state_989779 state_989792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989779
  · exact cover_989792
#print axioms cover_989778

def state_989752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_989752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989752 := by
  apply coveredState_split_literal (state := state_989752) 3
    state_989753 state_989778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989753
  · exact cover_989778
#print axioms cover_989752

def state_989751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_989751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989751 := by
  apply coveredState_split_literal (state := state_989751) 0
    state_989752 state_989903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989752
  · exact cover_989903
#print axioms cover_989751

def state_989693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 21)))
theorem cover_989693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989693 := by
  apply coveredState_split_literal (state := state_989693) 2
    state_989694 state_989751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989694
  · exact cover_989751
#print axioms cover_989693

def state_989567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_989567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989567 := by
  apply coveredState_split_literal (state := state_989567) 4
    state_989568 state_989693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_989568
  · exact cover_989693
#print axioms cover_989567
end Mub6.Numerical.CircleFullD0.Forest
