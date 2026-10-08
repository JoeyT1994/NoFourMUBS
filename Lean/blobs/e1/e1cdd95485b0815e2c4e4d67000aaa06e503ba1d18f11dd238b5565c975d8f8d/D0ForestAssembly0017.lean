import D0FullInterface
import D0ForestAssembly0015
import D0ForestAssembly0016
import D0ForestChunk0033
import D0ForestChunk0037
import D0ForestChunk0038
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
def state_1649185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1649185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649185 := by
  apply coveredState_split_literal (state := state_1649185) 1
    state_1649186 state_1650265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649186
  · exact cover_1650265
#print axioms cover_1649185

def state_1645081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
theorem cover_1645081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645081 := by
  apply coveredState_split_literal (state := state_1645081) 2
    state_1645082 state_1649185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645082
  · exact cover_1649185
#print axioms cover_1645081

def state_1651376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
theorem cover_1651376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651376 := by
  apply coveredState_split_literal (state := state_1651376) 2
    state_1651377 state_1652394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651377
  · exact cover_1652394
#print axioms cover_1651376

def state_1645080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_1645080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645080 := by
  apply coveredState_split_literal (state := state_1645080) 4
    state_1645081 state_1651376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645081
  · exact cover_1651376
#print axioms cover_1645080

def state_1640876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1640876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640876 := by
  apply coveredState_split_literal (state := state_1640876) 3
    state_1640877 state_1645080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640877
  · exact cover_1645080
#print axioms cover_1640876

def state_1640875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1640875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640875 := by
  apply coveredState_split_literal (state := state_1640875) 1
    state_1640876 state_1652583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640876
  · exact cover_1652583
#print axioms cover_1640875

def state_1652897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
theorem cover_1652897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652897 := by
  apply coveredState_split_literal (state := state_1652897) 0
    state_1652898 state_1653917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652898
  · exact cover_1653917
#print axioms cover_1652897

def state_1652837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 10)))
theorem cover_1652837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652837 := by
  apply coveredState_split_literal (state := state_1652837) 2
    state_1652838 state_1652897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652838
  · exact cover_1652897
#print axioms cover_1652837

def state_1652836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
theorem cover_1652836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652836 := by
  apply coveredState_split_literal (state := state_1652836) 4
    state_1652837 state_1653934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652837
  · exact cover_1653934
#print axioms cover_1652836

def state_1654336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 20)))
theorem cover_1654336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654336 := by
  apply coveredState_split_literal (state := state_1654336) 2
    state_1654337 state_1655282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654337
  · exact cover_1655282
#print axioms cover_1654336

def state_1654335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 10)))
theorem cover_1654335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654335 := by
  apply coveredState_split_literal (state := state_1654335) 4
    state_1654336 state_1655823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654336
  · exact cover_1655823
#print axioms cover_1654335

def state_1654334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1654334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654334 := by
  apply coveredState_split_literal (state := state_1654334) 3
    state_1654335 state_1656252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654335
  · exact cover_1656252
#print axioms cover_1654334

def state_1656380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 10)))
theorem cover_1656380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656380 := by
  apply coveredState_split_literal (state := state_1656380) 4
    state_1656381 state_1657330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656381
  · exact cover_1657330
#print axioms cover_1656380

def state_1656379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1656379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656379 := by
  apply coveredState_split_literal (state := state_1656379) 3
    state_1656380 state_1657557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656380
  · exact cover_1657557
#print axioms cover_1656379

def state_1654333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1654333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654333 := by
  apply coveredState_split_literal (state := state_1654333) 1
    state_1654334 state_1656379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654334
  · exact cover_1656379
#print axioms cover_1654333

def state_1654332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1654332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654332 := by
  apply coveredState_split_literal (state := state_1654332) 0
    state_1654333 state_1657696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654333
  · exact cover_1657696
#print axioms cover_1654332

def state_1653938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
theorem cover_1653938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653938 := by
  apply coveredState_split_literal (state := state_1653938) 2
    state_1653939 state_1654332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653939
  · exact cover_1654332
#print axioms cover_1653938

def state_1653937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_1653937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653937 := by
  apply coveredState_split_literal (state := state_1653937) 4
    state_1653938 state_1657781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653938
  · exact cover_1657781
#print axioms cover_1653937

def state_1652835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1652835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652835 := by
  apply coveredState_split_literal (state := state_1652835) 3
    state_1652836 state_1653937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652836
  · exact cover_1653937
#print axioms cover_1652835

def state_1652834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1652834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652834 := by
  apply coveredState_split_literal (state := state_1652834) 1
    state_1652835 state_1658468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652835
  · exact cover_1658468
#print axioms cover_1652834

def state_1640874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1640874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640874 := by
  apply coveredState_split_literal (state := state_1640874) 0
    state_1640875 state_1652834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640875
  · exact cover_1652834
#print axioms cover_1640874

def state_1635042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_1635042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635042 := by
  apply coveredState_split_literal (state := state_1635042) 4
    state_1635043 state_1640874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635043
  · exact cover_1640874
#print axioms cover_1635042

def state_1659409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_1659409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659409 := by
  apply coveredState_split_literal (state := state_1659409) 1
    state_1659410 state_1660279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659410
  · exact cover_1660279
#print axioms cover_1659409

def state_1659408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 23)))
theorem cover_1659408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659408 := by
  apply coveredState_split_literal (state := state_1659408) 3
    state_1659409 state_1660538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659409
  · exact cover_1660538
#print axioms cover_1659408

def state_1659276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_1659276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659276 := by
  apply coveredState_split_literal (state := state_1659276) 2
    state_1659277 state_1659408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659277
  · exact cover_1659408
#print axioms cover_1659276

def state_1659264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1659264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659264 := by
  apply coveredState_split_literal (state := state_1659264) 4
    state_1659265 state_1659276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659265
  · exact cover_1659276
#print axioms cover_1659264

def state_1659263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1659263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659263 := by
  apply coveredState_split_literal (state := state_1659263) 1
    state_1659264 state_1660609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659264
  · exact cover_1660609
#print axioms cover_1659263

def state_1659262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1659262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659262 := by
  apply coveredState_split_literal (state := state_1659262) 0
    state_1659263 state_1660678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659263
  · exact cover_1660678
#print axioms cover_1659262

def state_1659261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
theorem cover_1659261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659261 := by
  apply coveredState_split_literal (state := state_1659261) 3
    state_1659262 state_1660701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659262
  · exact cover_1660701
#print axioms cover_1659261

def state_1659260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_1659260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659260 := by
  apply coveredState_split_literal (state := state_1659260) 2
    state_1659261 state_1660724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659261
  · exact cover_1660724
#print axioms cover_1659260

def state_1659234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1659234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659234 := by
  apply coveredState_split_literal (state := state_1659234) 4
    state_1659235 state_1659260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659235
  · exact cover_1659260
#print axioms cover_1659234

def state_1659233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1659233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659233 := by
  apply coveredState_split_literal (state := state_1659233) 1
    state_1659234 state_1661037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659234
  · exact cover_1661037
#print axioms cover_1659233

def state_1658613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1658613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658613 := by
  apply coveredState_split_literal (state := state_1658613) 0
    state_1658614 state_1659233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658614
  · exact cover_1659233
#print axioms cover_1658613

def state_1658605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_1658605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658605 := by
  apply coveredState_split_literal (state := state_1658605) 4
    state_1658606 state_1658613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658606
  · exact cover_1658613
#print axioms cover_1658605

def state_1635041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1635041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635041 := by
  apply coveredState_split_literal (state := state_1635041) 3
    state_1635042 state_1658605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635042
  · exact cover_1658605
#print axioms cover_1635041

def state_1631109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1631109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631109 := by
  apply coveredState_split_literal (state := state_1631109) 2
    state_1631110 state_1635041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631110
  · exact cover_1635041
#print axioms cover_1631109

def state_1631108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1631108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631108 := by
  apply coveredState_split_literal (state := state_1631108) 1
    state_1631109 state_1661116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631109
  · exact cover_1661116
#print axioms cover_1631108

def state_1620084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1620084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620084 := by
  apply coveredState_split_literal (state := state_1620084) 0
    state_1620085 state_1631108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620085
  · exact cover_1631108
#print axioms cover_1620084

def state_1661703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1661703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661703 := by
  apply coveredState_split_literal (state := state_1661703) 0
    state_1661704 state_1661793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661704
  · exact cover_1661793
#print axioms cover_1661703

def state_1661702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_1661702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661702 := by
  apply coveredState_split_literal (state := state_1661702) 4
    state_1661703 state_1662772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661703
  · exact cover_1662772
#print axioms cover_1661702

def state_1661644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_1661644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661644 := by
  apply coveredState_split_literal (state := state_1661644) 3
    state_1661645 state_1661702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661645
  · exact cover_1661702
#print axioms cover_1661644

def state_1661560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1661560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661560 := by
  apply coveredState_split_literal (state := state_1661560) 2
    state_1661561 state_1661644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661561
  · exact cover_1661644
#print axioms cover_1661560

def state_1661559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1661559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661559 := by
  apply coveredState_split_literal (state := state_1661559) 1
    state_1661560 state_1662775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661560
  · exact cover_1662775
#print axioms cover_1661559

def state_1661455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1661455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661455 := by
  apply coveredState_split_literal (state := state_1661455) 0
    state_1661456 state_1661559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661456
  · exact cover_1661559
#print axioms cover_1661455

def state_1620083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1620083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620083 := by
  apply coveredState_split_literal (state := state_1620083) 4
    state_1620084 state_1661455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620084
  · exact cover_1661455
#print axioms cover_1620083

def state_1618071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1618071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618071 := by
  apply coveredState_split_literal (state := state_1618071) 3
    state_1618072 state_1620083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618072
  · exact cover_1620083
#print axioms cover_1618071

def state_1617455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1617455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617455 := by
  apply coveredState_split_literal (state := state_1617455) 2
    state_1617456 state_1618071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617456
  · exact cover_1618071
#print axioms cover_1617455

def state_1570133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1570133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570133 := by
  apply coveredState_split_literal (state := state_1570133) 1
    state_1570134 state_1617455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570134
  · exact cover_1617455
#print axioms cover_1570133

def state_1664059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1664059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664059 := by
  apply coveredState_split_literal (state := state_1664059) 4
    state_1664060 state_1664191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664060
  · exact cover_1664191
#print axioms cover_1664059

def state_1663785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1663785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663785 := by
  apply coveredState_split_literal (state := state_1663785) 3
    state_1663786 state_1664059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663786
  · exact cover_1664059
#print axioms cover_1663785

def state_1665117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1665117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665117 := by
  apply coveredState_split_literal (state := state_1665117) 4
    state_1665118 state_1665227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665118
  · exact cover_1665227
#print axioms cover_1665117

def state_1666469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_1666469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666469 := by
  apply coveredState_split_literal (state := state_1666469) 3
    state_1666470 state_1667415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666470
  · exact cover_1667415
#print axioms cover_1666469

def state_1666468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_1666468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666468 := by
  apply coveredState_split_literal (state := state_1666468) 2
    state_1666469 state_1667534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666469
  · exact cover_1667534
#print axioms cover_1666468

def state_1666467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_1666467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666467 := by
  apply coveredState_split_literal (state := state_1666467) 0
    state_1666468 state_1667655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666468
  · exact cover_1667655
#print axioms cover_1666467

def state_1666447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_1666447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666447 := by
  apply coveredState_split_literal (state := state_1666447) 4
    state_1666448 state_1666467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666448
  · exact cover_1666467
#print axioms cover_1666447

def state_1666446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1666446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666446 := by
  apply coveredState_split_literal (state := state_1666446) 3
    state_1666447 state_1667982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666447
  · exact cover_1667982
#print axioms cover_1666446

def state_1666445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1666445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666445 := by
  apply coveredState_split_literal (state := state_1666445) 2
    state_1666446 state_1667989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666446
  · exact cover_1667989
#print axioms cover_1666445

def state_1666381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1666381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666381 := by
  apply coveredState_split_literal (state := state_1666381) 1
    state_1666382 state_1666445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666382
  · exact cover_1666445
#print axioms cover_1666381

def state_1666380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1666380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666380 := by
  apply coveredState_split_literal (state := state_1666380) 0
    state_1666381 state_1667998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666381
  · exact cover_1667998
#print axioms cover_1666380

def state_1666166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1666166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666166 := by
  apply coveredState_split_literal (state := state_1666166) 4
    state_1666167 state_1666380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666167
  · exact cover_1666380
#print axioms cover_1666166

def state_1665116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1665116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665116 := by
  apply coveredState_split_literal (state := state_1665116) 3
    state_1665117 state_1666166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665117
  · exact cover_1666166
#print axioms cover_1665116

def state_1663784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1663784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663784 := by
  apply coveredState_split_literal (state := state_1663784) 2
    state_1663785 state_1665116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663785
  · exact cover_1665116
#print axioms cover_1663784

def state_1662862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1662862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662862 := by
  apply coveredState_split_literal (state := state_1662862) 1
    state_1662863 state_1663784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662863
  · exact cover_1663784
#print axioms cover_1662862

def state_1570132 : State := rootState
theorem cover_1570132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570132 := by
  apply coveredState_split_literal (state := state_1570132) 0
    state_1570133 state_1662862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570133
  · exact cover_1662862
#print axioms cover_1570132
end Mub6.Numerical.CircleFullD0.Forest
