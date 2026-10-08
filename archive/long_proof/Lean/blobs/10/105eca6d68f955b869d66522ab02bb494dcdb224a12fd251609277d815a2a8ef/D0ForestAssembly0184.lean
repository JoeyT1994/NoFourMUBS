import D0FullInterface
import D0ForestAssembly0183
import D0ForestChunk0691
import D0ForestChunk0692
import D0ForestChunk0693
import D0ForestChunk0694
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1466793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 9)))
theorem cover_1466793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466793 := by
  apply coveredState_split_literal (state := state_1466793) 0
    state_1466794 state_1466803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466794
  · exact cover_1466803
#print axioms cover_1466793

def state_1466779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 4)))
theorem cover_1466779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466779 := by
  apply coveredState_split_literal (state := state_1466779) 4
    state_1466780 state_1466793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466780
  · exact cover_1466793
#print axioms cover_1466779

def state_1466778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 4)))
theorem cover_1466778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466778 := by
  apply coveredState_split_literal (state := state_1466778) 3
    state_1466779 state_1466860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466779
  · exact cover_1466860
#print axioms cover_1466778

def state_1466764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_1466764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466764 := by
  apply coveredState_split_literal (state := state_1466764) 2
    state_1466765 state_1466778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466765
  · exact cover_1466778
#print axioms cover_1466764

def state_1466726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_1466726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466726 := by
  apply coveredState_split_literal (state := state_1466726) 1
    state_1466727 state_1466764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466727
  · exact cover_1466764
#print axioms cover_1466726

def state_1466714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_1466714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466714 := by
  apply coveredState_split_literal (state := state_1466714) 0
    state_1466715 state_1466726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466715
  · exact cover_1466726
#print axioms cover_1466714

def state_1466896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 5)))
theorem cover_1466896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466896 := by
  apply coveredState_split_literal (state := state_1466896) 4
    state_1466897 state_1466958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466897
  · exact cover_1466958
#print axioms cover_1466896

def state_1466993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
theorem cover_1466993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466993 := by
  apply coveredState_split_literal (state := state_1466993) 4
    state_1466994 state_1467053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466994
  · exact cover_1467053
#print axioms cover_1466993

def state_1466895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1466895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466895 := by
  apply coveredState_split_literal (state := state_1466895) 2
    state_1466896 state_1466993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466896
  · exact cover_1466993
#print axioms cover_1466895

def state_1466885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1466885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466885 := by
  apply coveredState_split_literal (state := state_1466885) 1
    state_1466886 state_1466895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466886
  · exact cover_1466895
#print axioms cover_1466885

def state_1466877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1466877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466877 := by
  apply coveredState_split_literal (state := state_1466877) 0
    state_1466878 state_1466885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466878
  · exact cover_1466885
#print axioms cover_1466877

def state_1466713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_1466713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466713 := by
  apply coveredState_split_literal (state := state_1466713) 4
    state_1466714 state_1466877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466714
  · exact cover_1466877
#print axioms cover_1466713

def state_1466712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1466712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466712 := by
  apply coveredState_split_literal (state := state_1466712) 3
    state_1466713 state_1467062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466713
  · exact cover_1467062
#print axioms cover_1466712

def state_1466616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1466616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466616 := by
  apply coveredState_split_literal (state := state_1466616) 2
    state_1466617 state_1466712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466617
  · exact cover_1466712
#print axioms cover_1466616

def state_1467151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 21)))
theorem cover_1467151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467151 := by
  apply coveredState_split_literal (state := state_1467151) 3
    state_1467152 state_1467209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467152
  · exact cover_1467209
#print axioms cover_1467151

def state_1467150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 21)))
theorem cover_1467150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467150 := by
  apply coveredState_split_literal (state := state_1467150) 1
    state_1467151 state_1467218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467151
  · exact cover_1467218
#print axioms cover_1467150

def state_1467148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 10)))
theorem cover_1467148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467148 := by
  apply coveredState_split_literal (state := state_1467148) 4
    state_1467149 state_1467150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467149
  · exact cover_1467150
#print axioms cover_1467148

def state_1467146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 10)))
theorem cover_1467146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467146 := by
  apply coveredState_split_literal (state := state_1467146) 2
    state_1467147 state_1467148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467147
  · exact cover_1467148
#print axioms cover_1467146

def state_1467144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 10)))
theorem cover_1467144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467144 := by
  apply coveredState_split_literal (state := state_1467144) 0
    state_1467145 state_1467146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467145
  · exact cover_1467146
#print axioms cover_1467144

def state_1467143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 10)))
theorem cover_1467143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467143 := by
  apply coveredState_split_literal (state := state_1467143) 3
    state_1467144 state_1467219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467144
  · exact cover_1467219
#print axioms cover_1467143

def state_1467142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 10)))
theorem cover_1467142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467142 := by
  apply coveredState_split_literal (state := state_1467142) 1
    state_1467143 state_1467220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467143
  · exact cover_1467220
#print axioms cover_1467142

def state_1467285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 16 else 44)))
theorem cover_1467285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467285 := by
  apply coveredState_split_literal (state := state_1467285) 3
    state_1467286 state_1467345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467286
  · exact cover_1467345
#print axioms cover_1467285

def state_1467277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 16 else 44)))
theorem cover_1467277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467277 := by
  apply coveredState_split_literal (state := state_1467277) 1
    state_1467278 state_1467285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467278
  · exact cover_1467285
#print axioms cover_1467277

def state_1467261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 44)))
theorem cover_1467261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467261 := by
  apply coveredState_split_literal (state := state_1467261) 2
    state_1467262 state_1467277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467262
  · exact cover_1467277
#print axioms cover_1467261

def state_1467260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
theorem cover_1467260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467260 := by
  apply coveredState_split_literal (state := state_1467260) 4
    state_1467261 state_1467356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467261
  · exact cover_1467356
#print axioms cover_1467260

def state_1467252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
theorem cover_1467252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467252 := by
  apply coveredState_split_literal (state := state_1467252) 0
    state_1467253 state_1467260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467253
  · exact cover_1467260
#print axioms cover_1467252

def state_1467251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
theorem cover_1467251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467251 := by
  apply coveredState_split_literal (state := state_1467251) 3
    state_1467252 state_1467363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467252
  · exact cover_1467363
#print axioms cover_1467251

def state_1467250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
theorem cover_1467250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467250 := by
  apply coveredState_split_literal (state := state_1467250) 1
    state_1467251 state_1467376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467251
  · exact cover_1467376
#print axioms cover_1467250

def state_1467232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 22)))
theorem cover_1467232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467232 := by
  apply coveredState_split_literal (state := state_1467232) 2
    state_1467233 state_1467250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467233
  · exact cover_1467250
#print axioms cover_1467232

def state_1467231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
theorem cover_1467231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467231 := by
  apply coveredState_split_literal (state := state_1467231) 4
    state_1467232 state_1467411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467232
  · exact cover_1467411
#print axioms cover_1467231

def state_1467223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
theorem cover_1467223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467223 := by
  apply coveredState_split_literal (state := state_1467223) 0
    state_1467224 state_1467231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467224
  · exact cover_1467231
#print axioms cover_1467223

def state_1467222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
theorem cover_1467222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467222 := by
  apply coveredState_split_literal (state := state_1467222) 3
    state_1467223 state_1467416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467223
  · exact cover_1467416
#print axioms cover_1467222
end Mub6.Numerical.CircleFullD0.Forest
