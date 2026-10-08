import CircleFullInterface
import CircleForestChunk1980
import CircleForestChunk1981
import CircleForestChunk1982
import CircleForestChunk1983
import CircleForestChunk1984
import CircleForestChunk1985
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2556067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 28 else 48)))
theorem cover_2556067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556067 := by
  apply coveredState_split_literal (state := state_2556067) 3
    state_2556068 state_2556081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556068
  · exact cover_2556081
#print axioms cover_2556067

def state_2556066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 48)))
theorem cover_2556066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556066 := by
  apply coveredState_split_literal (state := state_2556066) 2
    state_2556067 state_2556132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556067
  · exact cover_2556132
#print axioms cover_2556066

def state_2556060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 48)))
theorem cover_2556060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556060 := by
  apply coveredState_split_literal (state := state_2556060) 0
    state_2556061 state_2556066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556061
  · exact cover_2556066
#print axioms cover_2556060

def state_2556059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
theorem cover_2556059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556059 := by
  apply coveredState_split_literal (state := state_2556059) 4
    state_2556060 state_2556163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556060
  · exact cover_2556163
#print axioms cover_2556059

def state_2556037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
theorem cover_2556037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556037 := by
  apply coveredState_split_literal (state := state_2556037) 1
    state_2556038 state_2556059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556038
  · exact cover_2556059
#print axioms cover_2556037

def state_2556187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 48)))
theorem cover_2556187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556187 := by
  apply coveredState_split_literal (state := state_2556187) 3
    state_2556188 state_2556221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556188
  · exact cover_2556221
#print axioms cover_2556187

def state_2556186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2556186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556186 := by
  apply coveredState_split_literal (state := state_2556186) 2
    state_2556187 state_2556260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556187
  · exact cover_2556260
#print axioms cover_2556186

def state_2556180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2556180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556180 := by
  apply coveredState_split_literal (state := state_2556180) 0
    state_2556181 state_2556186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556181
  · exact cover_2556186
#print axioms cover_2556180

def state_2556179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2556179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556179 := by
  apply coveredState_split_literal (state := state_2556179) 4
    state_2556180 state_2556273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556180
  · exact cover_2556273
#print axioms cover_2556179

def state_2556314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
theorem cover_2556314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556314 := by
  apply coveredState_split_literal (state := state_2556314) 4
    state_2556315 state_2556370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556315
  · exact cover_2556370
#print axioms cover_2556314

def state_2556313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
theorem cover_2556313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556313 := by
  apply coveredState_split_literal (state := state_2556313) 1
    state_2556314 state_2556397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556314
  · exact cover_2556397
#print axioms cover_2556313

def state_2556469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 97)))
theorem cover_2556469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556469 := by
  apply coveredState_split_literal (state := state_2556469) 0
    state_2556470 state_2556487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556470
  · exact cover_2556487
#print axioms cover_2556469

def state_2556449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 48)))
theorem cover_2556449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556449 := by
  apply coveredState_split_literal (state := state_2556449) 4
    state_2556450 state_2556469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556450
  · exact cover_2556469
#print axioms cover_2556449

def state_2556448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 48)))
theorem cover_2556448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556448 := by
  apply coveredState_split_literal (state := state_2556448) 1
    state_2556449 state_2556540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556449
  · exact cover_2556540
#print axioms cover_2556448

def state_2556312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 48)))
theorem cover_2556312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556312 := by
  apply coveredState_split_literal (state := state_2556312) 3
    state_2556313 state_2556448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556313
  · exact cover_2556448
#print axioms cover_2556312

def state_2556614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_2556614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556614 := by
  apply coveredState_split_literal (state := state_2556614) 4
    state_2556615 state_2556676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556615
  · exact cover_2556676
#print axioms cover_2556614

def state_2556574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_2556574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556574 := by
  apply coveredState_split_literal (state := state_2556574) 1
    state_2556575 state_2556614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556575
  · exact cover_2556614
#print axioms cover_2556574

def state_2556573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 48)))
theorem cover_2556573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556573 := by
  apply coveredState_split_literal (state := state_2556573) 3
    state_2556574 state_2556699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556574
  · exact cover_2556699
#print axioms cover_2556573

def state_2556311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2556311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556311 := by
  apply coveredState_split_literal (state := state_2556311) 2
    state_2556312 state_2556573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556312
  · exact cover_2556573
#print axioms cover_2556311

def state_2556289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2556289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556289 := by
  apply coveredState_split_literal (state := state_2556289) 0
    state_2556290 state_2556311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556290
  · exact cover_2556311
#print axioms cover_2556289

def state_2556288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2556288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556288 := by
  apply coveredState_split_literal (state := state_2556288) 4
    state_2556289 state_2556742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556289
  · exact cover_2556742
#print axioms cover_2556288

def state_2556178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2556178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556178 := by
  apply coveredState_split_literal (state := state_2556178) 1
    state_2556179 state_2556288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556179
  · exact cover_2556288
#print axioms cover_2556178

def state_2556036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 24)))
theorem cover_2556036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556036 := by
  apply coveredState_split_literal (state := state_2556036) 3
    state_2556037 state_2556178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556037
  · exact cover_2556178
#print axioms cover_2556036

def state_2556801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 24)))
theorem cover_2556801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556801 := by
  apply coveredState_split_literal (state := state_2556801) 3
    state_2556802 state_2556831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556802
  · exact cover_2556831
#print axioms cover_2556801

def state_2556035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_2556035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556035 := by
  apply coveredState_split_literal (state := state_2556035) 2
    state_2556036 state_2556801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556036
  · exact cover_2556801
#print axioms cover_2556035

def state_2556023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_2556023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556023 := by
  apply coveredState_split_literal (state := state_2556023) 0
    state_2556024 state_2556035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556024
  · exact cover_2556035
#print axioms cover_2556023

def state_2556022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2556022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556022 := by
  apply coveredState_split_literal (state := state_2556022) 4
    state_2556023 state_2556868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556023
  · exact cover_2556868
#print axioms cover_2556022

def state_2555998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_2555998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555998 := by
  apply coveredState_split_literal (state := state_2555998) 1
    state_2555999 state_2556022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555999
  · exact cover_2556022
#print axioms cover_2555998

def state_2556956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 30 else 49)))
theorem cover_2556956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556956 := by
  apply coveredState_split_literal (state := state_2556956) 3
    state_2556957 state_2556996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556957
  · exact cover_2556996
#print axioms cover_2556956

def state_2556955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
theorem cover_2556955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556955 := by
  apply coveredState_split_literal (state := state_2556955) 2
    state_2556956 state_2557021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556956
  · exact cover_2557021
#print axioms cover_2556955

def state_2556949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
theorem cover_2556949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556949 := by
  apply coveredState_split_literal (state := state_2556949) 0
    state_2556950 state_2556955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556950
  · exact cover_2556955
#print axioms cover_2556949

def state_2556925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 24)))
theorem cover_2556925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556925 := by
  apply coveredState_split_literal (state := state_2556925) 4
    state_2556926 state_2556949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556926
  · exact cover_2556949
#print axioms cover_2556925
end Mub6.Numerical.CircleFullD0.Forest
