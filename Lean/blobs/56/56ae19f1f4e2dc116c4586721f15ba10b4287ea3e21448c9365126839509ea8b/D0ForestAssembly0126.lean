import D0FullInterface
import D0ForestAssembly0125
import D0ForestChunk0489
import D0ForestChunk0490
import D0ForestChunk0491
import D0ForestChunk0492
import D0ForestChunk0493
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1306318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 116 else 90)))
theorem cover_1306318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306318 := by
  apply coveredState_split_literal (state := state_1306318) 0
    state_1306319 state_1306366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306319
  · exact cover_1306366
#print axioms cover_1306318

def state_1306317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 90)))
theorem cover_1306317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306317 := by
  apply coveredState_split_literal (state := state_1306317) 3
    state_1306318 state_1306397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306318
  · exact cover_1306397
#print axioms cover_1306317

def state_1306316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 90)))
theorem cover_1306316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306316 := by
  apply coveredState_split_literal (state := state_1306316) 1
    state_1306317 state_1306446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306317
  · exact cover_1306446
#print axioms cover_1306316

def state_1306315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 45)))
theorem cover_1306315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306315 := by
  apply coveredState_split_literal (state := state_1306315) 4
    state_1306316 state_1306451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306316
  · exact cover_1306451
#print axioms cover_1306315

def state_1306510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 67 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 117 else 90)))
theorem cover_1306510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306510 := by
  apply coveredState_split_literal (state := state_1306510) 2
    state_1306511 state_1306562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306511
  · exact cover_1306562
#print axioms cover_1306510

def state_1306484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 117 else 90)))
theorem cover_1306484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306484 := by
  apply coveredState_split_literal (state := state_1306484) 0
    state_1306485 state_1306510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306485
  · exact cover_1306510
#print axioms cover_1306484

def state_1306458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 90)))
theorem cover_1306458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306458 := by
  apply coveredState_split_literal (state := state_1306458) 3
    state_1306459 state_1306484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306459
  · exact cover_1306484
#print axioms cover_1306458

def state_1306457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 90)))
theorem cover_1306457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306457 := by
  apply coveredState_split_literal (state := state_1306457) 1
    state_1306458 state_1306577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306458
  · exact cover_1306577
#print axioms cover_1306457

def state_1306456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 45)))
theorem cover_1306456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306456 := by
  apply coveredState_split_literal (state := state_1306456) 4
    state_1306457 state_1306600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306457
  · exact cover_1306600
#print axioms cover_1306456

def state_1306314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 45)))
theorem cover_1306314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306314 := by
  apply coveredState_split_literal (state := state_1306314) 2
    state_1306315 state_1306456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306315
  · exact cover_1306456
#print axioms cover_1306314

def state_1306274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 45)))
theorem cover_1306274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306274 := by
  apply coveredState_split_literal (state := state_1306274) 0
    state_1306275 state_1306314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306275
  · exact cover_1306314
#print axioms cover_1306274

def state_1306273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 45)))
theorem cover_1306273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306273 := by
  apply coveredState_split_literal (state := state_1306273) 3
    state_1306274 state_1306621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306274
  · exact cover_1306621
#print axioms cover_1306273

def state_1305501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 22)))
theorem cover_1305501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305501 := by
  apply coveredState_split_literal (state := state_1305501) 4
    state_1305502 state_1306273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305502
  · exact cover_1306273
#print axioms cover_1305501

def state_1305500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 22)))
theorem cover_1305500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305500 := by
  apply coveredState_split_literal (state := state_1305500) 1
    state_1305501 state_1306650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305501
  · exact cover_1306650
#print axioms cover_1305500

def state_1305499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 22)))
theorem cover_1305499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305499 := by
  apply coveredState_split_literal (state := state_1305499) 2
    state_1305500 state_1306681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305500
  · exact cover_1306681
#print axioms cover_1305499

def state_1306822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 90)))
theorem cover_1306822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306822 := by
  apply coveredState_split_literal (state := state_1306822) 3
    state_1306823 state_1306824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306823
  · exact cover_1306824
#print axioms cover_1306822

def state_1306821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 44) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 90)))
theorem cover_1306821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306821 := by
  apply coveredState_split_literal (state := state_1306821) 1
    state_1306822 state_1306887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306822
  · exact cover_1306887
#print axioms cover_1306821

def state_1306906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 44) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 91)))
theorem cover_1306906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306906 := by
  apply coveredState_split_literal (state := state_1306906) 1
    state_1306907 state_1306962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306907
  · exact cover_1306962
#print axioms cover_1306906

def state_1306820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 44) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 45)))
theorem cover_1306820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306820 := by
  apply coveredState_split_literal (state := state_1306820) 4
    state_1306821 state_1306906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306821
  · exact cover_1306906
#print axioms cover_1306820

def state_1306778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 45)))
theorem cover_1306778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306778 := by
  apply coveredState_split_literal (state := state_1306778) 2
    state_1306779 state_1306820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306779
  · exact cover_1306820
#print axioms cover_1306778

def state_1306777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 45)))
theorem cover_1306777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306777 := by
  apply coveredState_split_literal (state := state_1306777) 0
    state_1306778 state_1306975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306778
  · exact cover_1306975
#print axioms cover_1306777

def state_1306977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 59 else 45)))
theorem cover_1306977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306977 := by
  apply coveredState_split_literal (state := state_1306977) 2
    state_1306978 state_1306987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306978
  · exact cover_1306987
#print axioms cover_1306977

def state_1306976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 59 else 45)))
theorem cover_1306976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306976 := by
  apply coveredState_split_literal (state := state_1306976) 0
    state_1306977 state_1307048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306977
  · exact cover_1307048
#print axioms cover_1306976

def state_1306776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 45)))
theorem cover_1306776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306776 := by
  apply coveredState_split_literal (state := state_1306776) 3
    state_1306777 state_1306976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306777
  · exact cover_1306976
#print axioms cover_1306776

def state_1306740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 22)))
theorem cover_1306740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306740 := by
  apply coveredState_split_literal (state := state_1306740) 4
    state_1306741 state_1306776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306741
  · exact cover_1306776
#print axioms cover_1306740

def state_1306739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 22)))
theorem cover_1306739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306739 := by
  apply coveredState_split_literal (state := state_1306739) 1
    state_1306740 state_1307103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306740
  · exact cover_1307103
#print axioms cover_1306739

def state_1307185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 45)))
theorem cover_1307185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307185 := by
  apply coveredState_split_literal (state := state_1307185) 0
    state_1307186 state_1307233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307186
  · exact cover_1307233
#print axioms cover_1307185

def state_1307133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 45)))
theorem cover_1307133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307133 := by
  apply coveredState_split_literal (state := state_1307133) 3
    state_1307134 state_1307185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307134
  · exact cover_1307185
#print axioms cover_1307133

def state_1307119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 22)))
theorem cover_1307119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307119 := by
  apply coveredState_split_literal (state := state_1307119) 4
    state_1307120 state_1307133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307120
  · exact cover_1307133
#print axioms cover_1307119

def state_1307118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 22)))
theorem cover_1307118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307118 := by
  apply coveredState_split_literal (state := state_1307118) 1
    state_1307119 state_1307280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307119
  · exact cover_1307280
#print axioms cover_1307118

def state_1306738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 22)))
theorem cover_1306738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306738 := by
  apply coveredState_split_literal (state := state_1306738) 2
    state_1306739 state_1307118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306739
  · exact cover_1307118
#print axioms cover_1306738

def state_1305498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 22)))
theorem cover_1305498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305498 := by
  apply coveredState_split_literal (state := state_1305498) 0
    state_1305499 state_1306738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1305499
  · exact cover_1306738
#print axioms cover_1305498
end Mub6.Numerical.CircleFullD0.Forest
