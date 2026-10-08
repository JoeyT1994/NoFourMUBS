import CircleFullInterface
import CircleForestAssembly0542
import CircleForestChunk2138
import CircleForestChunk2139
import CircleForestChunk2140
import CircleForestChunk2141
import CircleForestChunk2142
import CircleForestChunk2143
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2594184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 18)))
theorem cover_2594184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594184 := by
  apply coveredState_split_literal (state := state_2594184) 2
    state_2594185 state_2594302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594185
  · exact cover_2594302
#print axioms cover_2594184

def state_2594323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 96 else (if j.val < 4 then 48 else 38)))
theorem cover_2594323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594323 := by
  apply coveredState_split_literal (state := state_2594323) 3
    state_2594324 state_2594335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594324
  · exact cover_2594335
#print axioms cover_2594323

def state_2594398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 97 else (if j.val < 4 then 48 else 38)))
theorem cover_2594398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594398 := by
  apply coveredState_split_literal (state := state_2594398) 3
    state_2594399 state_2594460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594399
  · exact cover_2594460
#print axioms cover_2594398

def state_2594322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 38)))
theorem cover_2594322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594322 := by
  apply coveredState_split_literal (state := state_2594322) 2
    state_2594323 state_2594398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594323
  · exact cover_2594398
#print axioms cover_2594322

def state_2594475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 39)))
theorem cover_2594475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594475 := by
  apply coveredState_split_literal (state := state_2594475) 2
    state_2594476 state_2594493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594476
  · exact cover_2594493
#print axioms cover_2594475

def state_2594321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2594321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594321 := by
  apply coveredState_split_literal (state := state_2594321) 4
    state_2594322 state_2594475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594322
  · exact cover_2594475
#print axioms cover_2594321

def state_2594553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 38)))
theorem cover_2594553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594553 := by
  apply coveredState_split_literal (state := state_2594553) 2
    state_2594554 state_2594609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594554
  · exact cover_2594609
#print axioms cover_2594553

def state_2594552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2594552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594552 := by
  apply coveredState_split_literal (state := state_2594552) 4
    state_2594553 state_2594630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594553
  · exact cover_2594630
#print axioms cover_2594552

def state_2594320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2594320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594320 := by
  apply coveredState_split_literal (state := state_2594320) 1
    state_2594321 state_2594552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594321
  · exact cover_2594552
#print axioms cover_2594320

def state_2594319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
theorem cover_2594319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594319 := by
  apply coveredState_split_literal (state := state_2594319) 0
    state_2594320 state_2594679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594320
  · exact cover_2594679
#print axioms cover_2594319

def state_2594725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 49 else 19)))
theorem cover_2594725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594725 := by
  apply coveredState_split_literal (state := state_2594725) 1
    state_2594726 state_2594751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594726
  · exact cover_2594751
#print axioms cover_2594725

def state_2594724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 49 else 19)))
theorem cover_2594724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594724 := by
  apply coveredState_split_literal (state := state_2594724) 0
    state_2594725 state_2594800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594725
  · exact cover_2594800
#print axioms cover_2594724

def state_2594318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 24 else 19)))
theorem cover_2594318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594318 := by
  apply coveredState_split_literal (state := state_2594318) 3
    state_2594319 state_2594724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594319
  · exact cover_2594724
#print axioms cover_2594318

def state_2594811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 19)))
theorem cover_2594811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594811 := by
  apply coveredState_split_literal (state := state_2594811) 1
    state_2594812 state_2594861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594812
  · exact cover_2594861
#print axioms cover_2594811

def state_2594810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 19)))
theorem cover_2594810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594810 := by
  apply coveredState_split_literal (state := state_2594810) 0
    state_2594811 state_2594888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594811
  · exact cover_2594888
#print axioms cover_2594810

def state_2594809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 24 else 19)))
theorem cover_2594809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594809 := by
  apply coveredState_split_literal (state := state_2594809) 3
    state_2594810 state_2594897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594810
  · exact cover_2594897
#print axioms cover_2594809

def state_2594317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 19)))
theorem cover_2594317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594317 := by
  apply coveredState_split_literal (state := state_2594317) 2
    state_2594318 state_2594809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594318
  · exact cover_2594809
#print axioms cover_2594317

def state_2594183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
theorem cover_2594183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594183 := by
  apply coveredState_split_literal (state := state_2594183) 4
    state_2594184 state_2594317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594184
  · exact cover_2594317
#print axioms cover_2594183

def state_2594049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
theorem cover_2594049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594049 := by
  apply coveredState_split_literal (state := state_2594049) 1
    state_2594050 state_2594183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594050
  · exact cover_2594183
#print axioms cover_2594049

def state_2594048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
theorem cover_2594048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594048 := by
  apply coveredState_split_literal (state := state_2594048) 0
    state_2594049 state_2594918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594049
  · exact cover_2594918
#print axioms cover_2594048

def state_2594047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 9)))
theorem cover_2594047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594047 := by
  apply coveredState_split_literal (state := state_2594047) 3
    state_2594048 state_2594931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594048
  · exact cover_2594931
#print axioms cover_2594047

def state_2594046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 9)))
theorem cover_2594046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594046 := by
  apply coveredState_split_literal (state := state_2594046) 2
    state_2594047 state_2594964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594047
  · exact cover_2594964
#print axioms cover_2594046

def state_2594030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_2594030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594030 := by
  apply coveredState_split_literal (state := state_2594030) 4
    state_2594031 state_2594046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594031
  · exact cover_2594046
#print axioms cover_2594030

def state_2594012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_2594012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594012 := by
  apply coveredState_split_literal (state := state_2594012) 1
    state_2594013 state_2594030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594013
  · exact cover_2594030
#print axioms cover_2594012

def state_2594011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_2594011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594011 := by
  apply coveredState_split_literal (state := state_2594011) 3
    state_2594012 state_2595005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594012
  · exact cover_2595005
#print axioms cover_2594011

def state_2594010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2594010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594010 := by
  apply coveredState_split_literal (state := state_2594010) 2
    state_2594011 state_2595018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2594011
  · exact cover_2595018
#print axioms cover_2594010

def state_2593372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2593372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593372 := by
  apply coveredState_split_literal (state := state_2593372) 0
    state_2593373 state_2594010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593373
  · exact cover_2594010
#print axioms cover_2593372

def state_2595037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 10)))
theorem cover_2595037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595037 := by
  apply coveredState_split_literal (state := state_2595037) 1
    state_2595038 state_2595051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595038
  · exact cover_2595051
#print axioms cover_2595037

def state_2595036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 5)))
theorem cover_2595036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595036 := by
  apply coveredState_split_literal (state := state_2595036) 4
    state_2595037 state_2595106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595037
  · exact cover_2595106
#print axioms cover_2595036

def state_2595035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
theorem cover_2595035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595035 := by
  apply coveredState_split_literal (state := state_2595035) 3
    state_2595036 state_2595109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595036
  · exact cover_2595109
#print axioms cover_2595035

def state_2595034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2595034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595034 := by
  apply coveredState_split_literal (state := state_2595034) 2
    state_2595035 state_2595110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595035
  · exact cover_2595110
#print axioms cover_2595034

def state_2595115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 10)))
theorem cover_2595115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595115 := by
  apply coveredState_split_literal (state := state_2595115) 2
    state_2595116 state_2595155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595116
  · exact cover_2595155
#print axioms cover_2595115
end Mub6.Numerical.CircleFullD0.Forest
