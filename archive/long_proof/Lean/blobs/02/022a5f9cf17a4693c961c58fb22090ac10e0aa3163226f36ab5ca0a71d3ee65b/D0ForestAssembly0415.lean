import D0FullInterface
import D0ForestAssembly0407
import D0ForestAssembly0408
import D0ForestAssembly0411
import D0ForestAssembly0413
import D0ForestAssembly0414
import D0ForestChunk1618
import D0ForestChunk1619
import D0ForestChunk1620
import D0ForestChunk1621
import D0ForestChunk1622
import D0ForestChunk1623
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2261336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
theorem cover_2261336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261336 := by
  apply coveredState_split_literal (state := state_2261336) 3
    state_2261337 state_2261732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261337
  · exact cover_2261732
#print axioms cover_2261336

def state_2261335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
theorem cover_2261335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261335 := by
  apply coveredState_split_literal (state := state_2261335) 0
    state_2261336 state_2261755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261336
  · exact cover_2261755
#print axioms cover_2261335

def state_2260393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 13)))
theorem cover_2260393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260393 := by
  apply coveredState_split_literal (state := state_2260393) 4
    state_2260394 state_2261335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260394
  · exact cover_2261335
#print axioms cover_2260393

def state_2260319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2260319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260319 := by
  apply coveredState_split_literal (state := state_2260319) 2
    state_2260320 state_2260393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260320
  · exact cover_2260393
#print axioms cover_2260319

def state_2261810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 13)))
theorem cover_2261810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261810 := by
  apply coveredState_split_literal (state := state_2261810) 4
    state_2261811 state_2261852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261811
  · exact cover_2261852
#print axioms cover_2261810

def state_2261804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2261804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261804 := by
  apply coveredState_split_literal (state := state_2261804) 2
    state_2261805 state_2261810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261805
  · exact cover_2261810
#print axioms cover_2261804

def state_2260318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2260318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260318 := by
  apply coveredState_split_literal (state := state_2260318) 1
    state_2260319 state_2261804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260319
  · exact cover_2261804
#print axioms cover_2260318

def state_2257782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2257782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257782 := by
  apply coveredState_split_literal (state := state_2257782) 3
    state_2257783 state_2260318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257783
  · exact cover_2260318
#print axioms cover_2257782

def state_2255590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2255590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255590 := by
  apply coveredState_split_literal (state := state_2255590) 0
    state_2255591 state_2257782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255591
  · exact cover_2257782
#print axioms cover_2255590

def state_2254382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 6)))
theorem cover_2254382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254382 := by
  apply coveredState_split_literal (state := state_2254382) 4
    state_2254383 state_2255590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254383
  · exact cover_2255590
#print axioms cover_2254382

def state_2254220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
theorem cover_2254220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254220 := by
  apply coveredState_split_literal (state := state_2254220) 3
    state_2254221 state_2254382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254221
  · exact cover_2254382
#print axioms cover_2254220

def state_2261888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 13)))
theorem cover_2261888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261888 := by
  apply coveredState_split_literal (state := state_2261888) 0
    state_2261889 state_2261912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261889
  · exact cover_2261912
#print axioms cover_2261888

def state_2261886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 6)))
theorem cover_2261886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261886 := by
  apply coveredState_split_literal (state := state_2261886) 4
    state_2261887 state_2261888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261887
  · exact cover_2261888
#print axioms cover_2261886

def state_2262108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 54)))
theorem cover_2262108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262108 := by
  apply coveredState_split_literal (state := state_2262108) 3
    state_2262109 state_2262128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262109
  · exact cover_2262128
#print axioms cover_2262108

def state_2262080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 54)))
theorem cover_2262080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262080 := by
  apply coveredState_split_literal (state := state_2262080) 0
    state_2262081 state_2262108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262081
  · exact cover_2262108
#print axioms cover_2262080

def state_2262178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2262178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262178 := by
  apply coveredState_split_literal (state := state_2262178) 3
    state_2262179 state_2262192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262179
  · exact cover_2262192
#print axioms cover_2262178

def state_2262244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 55)))
theorem cover_2262244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262244 := by
  apply coveredState_split_literal (state := state_2262244) 2
    state_2262245 state_2262304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262245
  · exact cover_2262304
#print axioms cover_2262244

def state_2262357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 111)))
theorem cover_2262357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262357 := by
  apply coveredState_split_literal (state := state_2262357) 0
    state_2262358 state_2262405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262358
  · exact cover_2262405
#print axioms cover_2262357

def state_2262311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2262311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262311 := by
  apply coveredState_split_literal (state := state_2262311) 4
    state_2262312 state_2262357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262312
  · exact cover_2262357
#print axioms cover_2262311

def state_2262310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2262310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262310 := by
  apply coveredState_split_literal (state := state_2262310) 1
    state_2262311 state_2262462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262311
  · exact cover_2262462
#print axioms cover_2262310

def state_2262309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
theorem cover_2262309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262309 := by
  apply coveredState_split_literal (state := state_2262309) 2
    state_2262310 state_2262517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262310
  · exact cover_2262517
#print axioms cover_2262309

def state_2262243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2262243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262243 := by
  apply coveredState_split_literal (state := state_2262243) 3
    state_2262244 state_2262309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262244
  · exact cover_2262309
#print axioms cover_2262243

def state_2262177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2262177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262177 := by
  apply coveredState_split_literal (state := state_2262177) 0
    state_2262178 state_2262243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262178
  · exact cover_2262243
#print axioms cover_2262177

def state_2262079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2262079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262079 := by
  apply coveredState_split_literal (state := state_2262079) 4
    state_2262080 state_2262177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262080
  · exact cover_2262177
#print axioms cover_2262079

def state_2262078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2262078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262078 := by
  apply coveredState_split_literal (state := state_2262078) 1
    state_2262079 state_2262544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262079
  · exact cover_2262544
#print axioms cover_2262078

def state_2262044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 27)))
theorem cover_2262044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262044 := by
  apply coveredState_split_literal (state := state_2262044) 3
    state_2262045 state_2262078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262045
  · exact cover_2262078
#print axioms cover_2262044

def state_2262043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2262043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262043 := by
  apply coveredState_split_literal (state := state_2262043) 2
    state_2262044 state_2262575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262044
  · exact cover_2262575
#print axioms cover_2262043

def state_2262011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2262011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262011 := by
  apply coveredState_split_literal (state := state_2262011) 0
    state_2262012 state_2262043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262012
  · exact cover_2262043
#print axioms cover_2262011

def state_2261989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2261989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261989 := by
  apply coveredState_split_literal (state := state_2261989) 4
    state_2261990 state_2262011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261990
  · exact cover_2262011
#print axioms cover_2261989

def state_2261988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2261988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261988 := by
  apply coveredState_split_literal (state := state_2261988) 1
    state_2261989 state_2262590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261989
  · exact cover_2262590
#print axioms cover_2261988

def state_2262661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 54)))
theorem cover_2262661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262661 := by
  apply coveredState_split_literal (state := state_2262661) 2
    state_2262662 state_2262721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262662
  · exact cover_2262721
#print axioms cover_2262661

def state_2262660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 54)))
theorem cover_2262660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262660 := by
  apply coveredState_split_literal (state := state_2262660) 3
    state_2262661 state_2262728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2262661
  · exact cover_2262728
#print axioms cover_2262660
end Mub6.Numerical.CircleFullD0.Forest
