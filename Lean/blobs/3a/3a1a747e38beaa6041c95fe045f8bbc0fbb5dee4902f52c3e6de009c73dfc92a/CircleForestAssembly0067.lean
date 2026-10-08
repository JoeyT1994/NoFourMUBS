import CircleFullInterface
import CircleForestAssembly0066
import CircleForestChunk0267
import CircleForestChunk0268
import CircleForestChunk0269
import CircleForestChunk0270
import CircleForestChunk0271
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_139553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_139553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139553 := by
  apply coveredState_split_literal (state := state_139553) 1
    state_139554 state_139577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139554
  · exact cover_139577
#print axioms cover_139553

def state_139479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_139479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139479 := by
  apply coveredState_split_literal (state := state_139479) 0
    state_139480 state_139553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139480
  · exact cover_139553
#print axioms cover_139479

def state_139728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_139728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139728 := by
  apply coveredState_split_literal (state := state_139728) 1
    state_139729 state_139746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139729
  · exact cover_139746
#print axioms cover_139728

def state_139727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_139727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139727 := by
  apply coveredState_split_literal (state := state_139727) 0
    state_139728 state_139803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139728
  · exact cover_139803
#print axioms cover_139727

def state_139726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_139726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139726 := by
  apply coveredState_split_literal (state := state_139726) 4
    state_139727 state_139864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139727
  · exact cover_139864
#print axioms cover_139726

def state_139712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_139712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139712 := by
  apply coveredState_split_literal (state := state_139712) 3
    state_139713 state_139726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139713
  · exact cover_139726
#print axioms cover_139712

def state_139698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_139698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139698 := by
  apply coveredState_split_literal (state := state_139698) 2
    state_139699 state_139712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139699
  · exact cover_139712
#print axioms cover_139698

def state_139684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_139684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139684 := by
  apply coveredState_split_literal (state := state_139684) 1
    state_139685 state_139698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139685
  · exact cover_139698
#print axioms cover_139684

def state_139626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_139626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139626 := by
  apply coveredState_split_literal (state := state_139626) 0
    state_139627 state_139684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139627
  · exact cover_139684
#print axioms cover_139626

def state_139478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_139478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139478 := by
  apply coveredState_split_literal (state := state_139478) 4
    state_139479 state_139626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139479
  · exact cover_139626
#print axioms cover_139478

def state_139890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_139890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139890 := by
  apply coveredState_split_literal (state := state_139890) 0
    state_139891 state_139916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139891
  · exact cover_139916
#print axioms cover_139890

def state_139997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 14)))
theorem cover_139997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139997 := by
  apply coveredState_split_literal (state := state_139997) 0
    state_139998 state_140023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139998
  · exact cover_140023
#print axioms cover_139997

def state_139996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 7)))
theorem cover_139996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139996 := by
  apply coveredState_split_literal (state := state_139996) 4
    state_139997 state_140086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139997
  · exact cover_140086
#print axioms cover_139996

def state_139995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
theorem cover_139995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139995 := by
  apply coveredState_split_literal (state := state_139995) 3
    state_139996 state_140099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139996
  · exact cover_140099
#print axioms cover_139995

def state_139983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_139983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139983 := by
  apply coveredState_split_literal (state := state_139983) 2
    state_139984 state_139995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139984
  · exact cover_139995
#print axioms cover_139983

def state_139969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_139969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139969 := by
  apply coveredState_split_literal (state := state_139969) 1
    state_139970 state_139983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139970
  · exact cover_139983
#print axioms cover_139969

def state_139955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_139955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139955 := by
  apply coveredState_split_literal (state := state_139955) 0
    state_139956 state_139969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139956
  · exact cover_139969
#print axioms cover_139955

def state_139889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_139889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139889 := by
  apply coveredState_split_literal (state := state_139889) 4
    state_139890 state_139955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139890
  · exact cover_139955
#print axioms cover_139889

def state_139477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_139477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139477 := by
  apply coveredState_split_literal (state := state_139477) 3
    state_139478 state_139889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139478
  · exact cover_139889
#print axioms cover_139477

def state_140117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_140117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140117 := by
  apply coveredState_split_literal (state := state_140117) 4
    state_140118 state_140155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140118
  · exact cover_140155
#print axioms cover_140117

def state_140223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_140223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140223 := by
  apply coveredState_split_literal (state := state_140223) 1
    state_140224 state_140231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140224
  · exact cover_140231
#print axioms cover_140223

def state_140221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_140221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140221 := by
  apply coveredState_split_literal (state := state_140221) 0
    state_140222 state_140223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140222
  · exact cover_140223
#print axioms cover_140221

def state_140220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
theorem cover_140220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140220 := by
  apply coveredState_split_literal (state := state_140220) 4
    state_140221 state_140290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140221
  · exact cover_140290
#print axioms cover_140220

def state_140219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_140219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140219 := by
  apply coveredState_split_literal (state := state_140219) 2
    state_140220 state_140349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140220
  · exact cover_140349
#print axioms cover_140219

def state_140218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_140218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140218 := by
  apply coveredState_split_literal (state := state_140218) 3
    state_140219 state_140352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140219
  · exact cover_140352
#print axioms cover_140218

def state_140216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_140216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140216 := by
  apply coveredState_split_literal (state := state_140216) 1
    state_140217 state_140218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140217
  · exact cover_140218
#print axioms cover_140216

def state_140214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_140214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140214 := by
  apply coveredState_split_literal (state := state_140214) 0
    state_140215 state_140216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140215
  · exact cover_140216
#print axioms cover_140214

def state_140192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_140192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140192 := by
  apply coveredState_split_literal (state := state_140192) 4
    state_140193 state_140214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140193
  · exact cover_140214
#print axioms cover_140192

def state_140116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_140116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140116 := by
  apply coveredState_split_literal (state := state_140116) 3
    state_140117 state_140192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140117
  · exact cover_140192
#print axioms cover_140116

def state_139476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_139476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139476 := by
  apply coveredState_split_literal (state := state_139476) 2
    state_139477 state_140116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139477
  · exact cover_140116
#print axioms cover_139476

def state_140535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_140535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140535 := by
  apply coveredState_split_literal (state := state_140535) 2
    state_140536 state_140555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140536
  · exact cover_140555
#print axioms cover_140535

def state_140505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_140505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140505 := by
  apply coveredState_split_literal (state := state_140505) 0
    state_140506 state_140535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140506
  · exact cover_140535
#print axioms cover_140505
end Mub6.Numerical.CircleFullPrototype.Forest
