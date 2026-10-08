import CircleFullInterface
import CircleForestAssembly0107
import CircleForestChunk0431
import CircleForestChunk0432
import CircleForestChunk0433
import CircleForestChunk0434
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1041026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 8)))
theorem cover_1041026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041026 := by
  apply coveredState_split_literal (state := state_1041026) 4
    state_1041027 state_1041196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041027
  · exact cover_1041196
#print axioms cover_1041026

def state_1041025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 8)))
theorem cover_1041025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041025 := by
  apply coveredState_split_literal (state := state_1041025) 1
    state_1041026 state_1041213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041026
  · exact cover_1041213
#print axioms cover_1041025

def state_1041015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 8)))
theorem cover_1041015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041015 := by
  apply coveredState_split_literal (state := state_1041015) 3
    state_1041016 state_1041025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041016
  · exact cover_1041025
#print axioms cover_1041015

def state_1041003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
theorem cover_1041003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041003 := by
  apply coveredState_split_literal (state := state_1041003) 2
    state_1041004 state_1041015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041004
  · exact cover_1041015
#print axioms cover_1041003

def state_1040981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
theorem cover_1040981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040981 := by
  apply coveredState_split_literal (state := state_1040981) 0
    state_1040982 state_1041003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040982
  · exact cover_1041003
#print axioms cover_1040981

def state_1040980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_1040980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040980 := by
  apply coveredState_split_literal (state := state_1040980) 4
    state_1040981 state_1041234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040981
  · exact cover_1041234
#print axioms cover_1040980

def state_1040979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_1040979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040979 := by
  apply coveredState_split_literal (state := state_1040979) 1
    state_1040980 state_1041249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040980
  · exact cover_1041249
#print axioms cover_1040979

def state_1041277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 8)))
theorem cover_1041277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041277 := by
  apply coveredState_split_literal (state := state_1041277) 1
    state_1041278 state_1041329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041278
  · exact cover_1041329
#print axioms cover_1041277

def state_1041276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 8)))
theorem cover_1041276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041276 := by
  apply coveredState_split_literal (state := state_1041276) 3
    state_1041277 state_1041342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041277
  · exact cover_1041342
#print axioms cover_1041276

def state_1041274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 8)))
theorem cover_1041274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041274 := by
  apply coveredState_split_literal (state := state_1041274) 2
    state_1041275 state_1041276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041275
  · exact cover_1041276
#print axioms cover_1041274

def state_1041272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 8)))
theorem cover_1041272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041272 := by
  apply coveredState_split_literal (state := state_1041272) 0
    state_1041273 state_1041274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041273
  · exact cover_1041274
#print axioms cover_1041272

def state_1041271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
theorem cover_1041271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041271 := by
  apply coveredState_split_literal (state := state_1041271) 4
    state_1041272 state_1041343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041272
  · exact cover_1041343
#print axioms cover_1041271

def state_1041270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
theorem cover_1041270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041270 := by
  apply coveredState_split_literal (state := state_1041270) 1
    state_1041271 state_1041344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041271
  · exact cover_1041344
#print axioms cover_1041270

def state_1040978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_1040978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040978 := by
  apply coveredState_split_literal (state := state_1040978) 3
    state_1040979 state_1041270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040979
  · exact cover_1041270
#print axioms cover_1040978

def state_1041360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1041360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041360 := by
  apply coveredState_split_literal (state := state_1041360) 0
    state_1041361 state_1041362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041361
  · exact cover_1041362
#print axioms cover_1041360

def state_1041359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1041359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041359 := by
  apply coveredState_split_literal (state := state_1041359) 4
    state_1041360 state_1041425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041360
  · exact cover_1041425
#print axioms cover_1041359

def state_1041358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1041358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041358 := by
  apply coveredState_split_literal (state := state_1041358) 1
    state_1041359 state_1041436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041359
  · exact cover_1041436
#print axioms cover_1041358

def state_1041357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_1041357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041357 := by
  apply coveredState_split_literal (state := state_1041357) 3
    state_1041358 state_1041437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041358
  · exact cover_1041437
#print axioms cover_1041357

def state_1040977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1040977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040977 := by
  apply coveredState_split_literal (state := state_1040977) 2
    state_1040978 state_1041357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040978
  · exact cover_1041357
#print axioms cover_1040977

def state_1041577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 51 else (if j.val < 4 then 26 else 16)))
theorem cover_1041577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041577 := by
  apply coveredState_split_literal (state := state_1041577) 0
    state_1041578 state_1041637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041578
  · exact cover_1041637
#print axioms cover_1041577

def state_1041569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 16)))
theorem cover_1041569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041569 := by
  apply coveredState_split_literal (state := state_1041569) 2
    state_1041570 state_1041577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041570
  · exact cover_1041577
#print axioms cover_1041569

def state_1041568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 8)))
theorem cover_1041568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041568 := by
  apply coveredState_split_literal (state := state_1041568) 4
    state_1041569 state_1041642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041569
  · exact cover_1041642
#print axioms cover_1041568

def state_1041567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 8)))
theorem cover_1041567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041567 := by
  apply coveredState_split_literal (state := state_1041567) 1
    state_1041568 state_1041655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041568
  · exact cover_1041655
#print axioms cover_1041567

def state_1041566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 8)))
theorem cover_1041566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041566 := by
  apply coveredState_split_literal (state := state_1041566) 3
    state_1041567 state_1041672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041567
  · exact cover_1041672
#print axioms cover_1041566

def state_1041565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 8)))
theorem cover_1041565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041565 := by
  apply coveredState_split_literal (state := state_1041565) 0
    state_1041566 state_1041675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041566
  · exact cover_1041675
#print axioms cover_1041565

def state_1041557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 8)))
theorem cover_1041557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041557 := by
  apply coveredState_split_literal (state := state_1041557) 2
    state_1041558 state_1041565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041558
  · exact cover_1041565
#print axioms cover_1041557

def state_1041556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
theorem cover_1041556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041556 := by
  apply coveredState_split_literal (state := state_1041556) 4
    state_1041557 state_1041680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041557
  · exact cover_1041680
#print axioms cover_1041556

def state_1041555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
theorem cover_1041555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041555 := by
  apply coveredState_split_literal (state := state_1041555) 1
    state_1041556 state_1041687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041556
  · exact cover_1041687
#print axioms cover_1041555

def state_1041501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_1041501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041501 := by
  apply coveredState_split_literal (state := state_1041501) 3
    state_1041502 state_1041555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041502
  · exact cover_1041555
#print axioms cover_1041501

def state_1041723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 51 else 16)))
theorem cover_1041723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041723 := by
  apply coveredState_split_literal (state := state_1041723) 0
    state_1041724 state_1041783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041724
  · exact cover_1041783
#print axioms cover_1041723

def state_1041715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 16)))
theorem cover_1041715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041715 := by
  apply coveredState_split_literal (state := state_1041715) 3
    state_1041716 state_1041723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041716
  · exact cover_1041723
#print axioms cover_1041715

def state_1041714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 8)))
theorem cover_1041714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041714 := by
  apply coveredState_split_literal (state := state_1041714) 4
    state_1041715 state_1041790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1041715
  · exact cover_1041790
#print axioms cover_1041714
end Mub6.Numerical.CircleFullD0.Forest
