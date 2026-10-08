import D0FullInterface
import D0ForestAssembly0292
import D0ForestChunk1125
import D0ForestChunk1126
import D0ForestChunk1127
import D0ForestChunk1128
import D0ForestChunk1129
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1570861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 25)))
theorem cover_1570861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570861 := by
  apply coveredState_split_literal (state := state_1570861) 4
    state_1570862 state_1570863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570862
  · exact cover_1570863
#print axioms cover_1570861

def state_1570859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 25 else 25)))
theorem cover_1570859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570859 := by
  apply coveredState_split_literal (state := state_1570859) 3
    state_1570860 state_1570861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570860
  · exact cover_1570861
#print axioms cover_1570859

def state_1570847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 25)))
theorem cover_1570847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570847 := by
  apply coveredState_split_literal (state := state_1570847) 2
    state_1570848 state_1570859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570848
  · exact cover_1570859
#print axioms cover_1570847

def state_1570846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 25)))
theorem cover_1570846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570846 := by
  apply coveredState_split_literal (state := state_1570846) 1
    state_1570847 state_1570952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570847
  · exact cover_1570952
#print axioms cover_1570846

def state_1570732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 25)))
theorem cover_1570732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570732 := by
  apply coveredState_split_literal (state := state_1570732) 0
    state_1570733 state_1570846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570733
  · exact cover_1570846
#print axioms cover_1570732

def state_1570718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 12)))
theorem cover_1570718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570718 := by
  apply coveredState_split_literal (state := state_1570718) 4
    state_1570719 state_1570732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570719
  · exact cover_1570732
#print axioms cover_1570718

def state_1570702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 12)))
theorem cover_1570702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570702 := by
  apply coveredState_split_literal (state := state_1570702) 3
    state_1570703 state_1570718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570703
  · exact cover_1570718
#print axioms cover_1570702

def state_1570692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 12)))
theorem cover_1570692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570692 := by
  apply coveredState_split_literal (state := state_1570692) 2
    state_1570693 state_1570702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570693
  · exact cover_1570702
#print axioms cover_1570692

def state_1570691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 12)))
theorem cover_1570691 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570691 := by
  apply coveredState_split_literal (state := state_1570691) 1
    state_1570692 state_1570955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570692
  · exact cover_1570955
#print axioms cover_1570691

def state_1570681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 12)))
theorem cover_1570681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570681 := by
  apply coveredState_split_literal (state := state_1570681) 0
    state_1570682 state_1570691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570682
  · exact cover_1570691
#print axioms cover_1570681

def state_1571011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 26)))
theorem cover_1571011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571011 := by
  apply coveredState_split_literal (state := state_1571011) 1
    state_1571012 state_1571073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571012
  · exact cover_1571073
#print axioms cover_1571011

def state_1571081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 26)))
theorem cover_1571081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571081 := by
  apply coveredState_split_literal (state := state_1571081) 2
    state_1571082 state_1571087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571082
  · exact cover_1571087
#print axioms cover_1571081

def state_1571080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 26)))
theorem cover_1571080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571080 := by
  apply coveredState_split_literal (state := state_1571080) 1
    state_1571081 state_1571148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571081
  · exact cover_1571148
#print axioms cover_1571080

def state_1571010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 26)))
theorem cover_1571010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571010 := by
  apply coveredState_split_literal (state := state_1571010) 0
    state_1571011 state_1571080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571011
  · exact cover_1571080
#print axioms cover_1571010

def state_1571009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 13)))
theorem cover_1571009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571009 := by
  apply coveredState_split_literal (state := state_1571009) 4
    state_1571010 state_1571155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571010
  · exact cover_1571155
#print axioms cover_1571009

def state_1570983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 13)))
theorem cover_1570983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570983 := by
  apply coveredState_split_literal (state := state_1570983) 3
    state_1570984 state_1571009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570984
  · exact cover_1571009
#print axioms cover_1570983

def state_1570975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 13)))
theorem cover_1570975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570975 := by
  apply coveredState_split_literal (state := state_1570975) 2
    state_1570976 state_1570983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570976
  · exact cover_1570983
#print axioms cover_1570975

def state_1570974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 13)))
theorem cover_1570974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570974 := by
  apply coveredState_split_literal (state := state_1570974) 1
    state_1570975 state_1571158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570975
  · exact cover_1571158
#print axioms cover_1570974

def state_1570964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 13)))
theorem cover_1570964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570964 := by
  apply coveredState_split_literal (state := state_1570964) 0
    state_1570965 state_1570974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570965
  · exact cover_1570974
#print axioms cover_1570964

def state_1570680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 6)))
theorem cover_1570680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570680 := by
  apply coveredState_split_literal (state := state_1570680) 4
    state_1570681 state_1570964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570681
  · exact cover_1570964
#print axioms cover_1570680

def state_1571240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 26 else 25)))
theorem cover_1571240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571240 := by
  apply coveredState_split_literal (state := state_1571240) 4
    state_1571241 state_1571266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571241
  · exact cover_1571266
#print axioms cover_1571240

def state_1571236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 25)))
theorem cover_1571236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571236 := by
  apply coveredState_split_literal (state := state_1571236) 2
    state_1571237 state_1571240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571237
  · exact cover_1571240
#print axioms cover_1571236

def state_1571235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 25)))
theorem cover_1571235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571235 := by
  apply coveredState_split_literal (state := state_1571235) 1
    state_1571236 state_1571313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571236
  · exact cover_1571313
#print axioms cover_1571235

def state_1571388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 95 else (if j.val < 4 then 52 else 51)))
theorem cover_1571388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571388 := by
  apply coveredState_split_literal (state := state_1571388) 4
    state_1571389 state_1571426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571389
  · exact cover_1571426
#print axioms cover_1571388

def state_1571376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 47 else (if j.val < 4 then 52 else 51)))
theorem cover_1571376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571376 := by
  apply coveredState_split_literal (state := state_1571376) 2
    state_1571377 state_1571388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571377
  · exact cover_1571388
#print axioms cover_1571376

def state_1571375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 52 else 51)))
theorem cover_1571375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571375 := by
  apply coveredState_split_literal (state := state_1571375) 1
    state_1571376 state_1571481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571376
  · exact cover_1571481
#print axioms cover_1571375

def state_1571374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 52 else 51)))
theorem cover_1571374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571374 := by
  apply coveredState_split_literal (state := state_1571374) 0
    state_1571375 state_1571544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571375
  · exact cover_1571544
#print axioms cover_1571374

def state_1571373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 26 else 51)))
theorem cover_1571373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571373 := by
  apply coveredState_split_literal (state := state_1571373) 3
    state_1571374 state_1571565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571374
  · exact cover_1571565
#print axioms cover_1571373

def state_1571333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 26 else 25)))
theorem cover_1571333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571333 := by
  apply coveredState_split_literal (state := state_1571333) 4
    state_1571334 state_1571373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571334
  · exact cover_1571373
#print axioms cover_1571333

def state_1571321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 25)))
theorem cover_1571321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571321 := by
  apply coveredState_split_literal (state := state_1571321) 2
    state_1571322 state_1571333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571322
  · exact cover_1571333
#print axioms cover_1571321

def state_1571320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 25)))
theorem cover_1571320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571320 := by
  apply coveredState_split_literal (state := state_1571320) 1
    state_1571321 state_1571574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571321
  · exact cover_1571574
#print axioms cover_1571320

def state_1571234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 25)))
theorem cover_1571234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571234 := by
  apply coveredState_split_literal (state := state_1571234) 0
    state_1571235 state_1571320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571235
  · exact cover_1571320
#print axioms cover_1571234
end Mub6.Numerical.CircleFullD0.Forest
