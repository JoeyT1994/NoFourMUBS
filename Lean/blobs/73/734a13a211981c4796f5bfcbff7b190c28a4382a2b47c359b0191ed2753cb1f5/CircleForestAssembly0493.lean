import CircleFullInterface
import CircleForestAssembly0490
import CircleForestAssembly0491
import CircleForestAssembly0492
import CircleForestChunk1930
import CircleForestChunk1936
import CircleForestChunk1937
import CircleForestChunk1938
import CircleForestChunk1939
import CircleForestChunk1940
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2336486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2336486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336486 := by
  apply coveredState_split_literal (state := state_2336486) 0
    state_2336487 state_2337790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336487
  · exact cover_2337790
#print axioms cover_2336486

def state_2336454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_2336454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336454 := by
  apply coveredState_split_literal (state := state_2336454) 4
    state_2336455 state_2336486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336455
  · exact cover_2336486
#print axioms cover_2336454

def state_2336426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2336426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336426 := by
  apply coveredState_split_literal (state := state_2336426) 3
    state_2336427 state_2336454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336427
  · exact cover_2336454
#print axioms cover_2336426

def state_2336358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2336358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336358 := by
  apply coveredState_split_literal (state := state_2336358) 2
    state_2336359 state_2336426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336359
  · exact cover_2336426
#print axioms cover_2336358

def state_2335968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2335968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335968 := by
  apply coveredState_split_literal (state := state_2335968) 1
    state_2335969 state_2336358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335969
  · exact cover_2336358
#print axioms cover_2335968

def state_2335967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2335967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335967 := by
  apply coveredState_split_literal (state := state_2335967) 0
    state_2335968 state_2337817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335968
  · exact cover_2337817
#print axioms cover_2335967

def state_2337859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_2337859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337859 := by
  apply coveredState_split_literal (state := state_2337859) 3
    state_2337860 state_2337875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337860
  · exact cover_2337875
#print axioms cover_2337859

def state_2337858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2337858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337858 := by
  apply coveredState_split_literal (state := state_2337858) 2
    state_2337859 state_2337930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337859
  · exact cover_2337930
#print axioms cover_2337858

def state_2337977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_2337977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337977 := by
  apply coveredState_split_literal (state := state_2337977) 3
    state_2337978 state_2337995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337978
  · exact cover_2337995
#print axioms cover_2337977

def state_2337967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2337967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337967 := by
  apply coveredState_split_literal (state := state_2337967) 2
    state_2337968 state_2337977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337968
  · exact cover_2337977
#print axioms cover_2337967

def state_2337857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2337857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337857 := by
  apply coveredState_split_literal (state := state_2337857) 1
    state_2337858 state_2337967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337858
  · exact cover_2337967
#print axioms cover_2337857

def state_2337856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2337856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337856 := by
  apply coveredState_split_literal (state := state_2337856) 0
    state_2337857 state_2338052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337857
  · exact cover_2338052
#print axioms cover_2337856

def state_2335966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2335966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335966 := by
  apply coveredState_split_literal (state := state_2335966) 4
    state_2335967 state_2337856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335967
  · exact cover_2337856
#print axioms cover_2335966

def state_2335748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2335748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335748 := by
  apply coveredState_split_literal (state := state_2335748) 3
    state_2335749 state_2335966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2335749
  · exact cover_2335966
#print axioms cover_2335748

def state_2338086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_2338086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338086 := by
  apply coveredState_split_literal (state := state_2338086) 3
    state_2338087 state_2338138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338087
  · exact cover_2338138
#print axioms cover_2338086

def state_2338085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2338085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338085 := by
  apply coveredState_split_literal (state := state_2338085) 2
    state_2338086 state_2338175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338086
  · exact cover_2338175
#print axioms cover_2338085

def state_2338084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2338084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338084 := by
  apply coveredState_split_literal (state := state_2338084) 1
    state_2338085 state_2338186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338085
  · exact cover_2338186
#print axioms cover_2338084

def state_2338083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2338083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338083 := by
  apply coveredState_split_literal (state := state_2338083) 0
    state_2338084 state_2338239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338084
  · exact cover_2338239
#print axioms cover_2338083

def state_2338283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_2338283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338283 := by
  apply coveredState_split_literal (state := state_2338283) 3
    state_2338284 state_2338335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338284
  · exact cover_2338335
#print axioms cover_2338283

def state_2338282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2338282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338282 := by
  apply coveredState_split_literal (state := state_2338282) 2
    state_2338283 state_2338350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338283
  · exact cover_2338350
#print axioms cover_2338282

def state_2338383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2338383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338383 := by
  apply coveredState_split_literal (state := state_2338383) 2
    state_2338384 state_2338447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338384
  · exact cover_2338447
#print axioms cover_2338383

def state_2338281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2338281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338281 := by
  apply coveredState_split_literal (state := state_2338281) 1
    state_2338282 state_2338383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338282
  · exact cover_2338383
#print axioms cover_2338281

def state_2338280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2338280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338280 := by
  apply coveredState_split_literal (state := state_2338280) 0
    state_2338281 state_2338454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338281
  · exact cover_2338454
#print axioms cover_2338280

def state_2338082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2338082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338082 := by
  apply coveredState_split_literal (state := state_2338082) 4
    state_2338083 state_2338280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338083
  · exact cover_2338280
#print axioms cover_2338082

def state_2338490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2338490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338490 := by
  apply coveredState_split_literal (state := state_2338490) 2
    state_2338491 state_2338552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338491
  · exact cover_2338552
#print axioms cover_2338490

def state_2338568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2338568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338568 := by
  apply coveredState_split_literal (state := state_2338568) 3
    state_2338569 state_2338578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338569
  · exact cover_2338578
#print axioms cover_2338568

def state_2338567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2338567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338567 := by
  apply coveredState_split_literal (state := state_2338567) 2
    state_2338568 state_2338633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338568
  · exact cover_2338633
#print axioms cover_2338567

def state_2338489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2338489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338489 := by
  apply coveredState_split_literal (state := state_2338489) 1
    state_2338490 state_2338567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338490
  · exact cover_2338567
#print axioms cover_2338489

def state_2338488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2338488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338488 := by
  apply coveredState_split_literal (state := state_2338488) 0
    state_2338489 state_2338640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338489
  · exact cover_2338640
#print axioms cover_2338488

def state_2338687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2338687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338687 := by
  apply coveredState_split_literal (state := state_2338687) 0
    state_2338688 state_2338751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338688
  · exact cover_2338751
#print axioms cover_2338687

def state_2338487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2338487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338487 := by
  apply coveredState_split_literal (state := state_2338487) 4
    state_2338488 state_2338687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338488
  · exact cover_2338687
#print axioms cover_2338487

def state_2338081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2338081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338081 := by
  apply coveredState_split_literal (state := state_2338081) 3
    state_2338082 state_2338487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2338082
  · exact cover_2338487
#print axioms cover_2338081
end Mub6.Numerical.CircleFullD0.Forest
