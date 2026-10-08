import D0FullInterface
import D0ForestAssembly0095
import D0ForestAssembly0096
import D0ForestAssembly0099
import D0ForestChunk0383
import D0ForestChunk0386
import D0ForestChunk0403
import D0ForestChunk0404
import D0ForestChunk0405
import D0ForestChunk0406
import D0ForestChunk0407
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1034554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 126)))
theorem cover_1034554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034554 := by
  apply coveredState_split_literal (state := state_1034554) 1
    state_1034555 state_1034590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034555
  · exact cover_1034590
#print axioms cover_1034554

def state_1034524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 126)))
theorem cover_1034524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034524 := by
  apply coveredState_split_literal (state := state_1034524) 0
    state_1034525 state_1034554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034525
  · exact cover_1034554
#print axioms cover_1034524

def state_1034523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 63)))
theorem cover_1034523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034523 := by
  apply coveredState_split_literal (state := state_1034523) 4
    state_1034524 state_1034625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034524
  · exact cover_1034625
#print axioms cover_1034523

def state_1034522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 63)))
theorem cover_1034522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034522 := by
  apply coveredState_split_literal (state := state_1034522) 3
    state_1034523 state_1034636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034523
  · exact cover_1034636
#print axioms cover_1034522

def state_1034506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
theorem cover_1034506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034506 := by
  apply coveredState_split_literal (state := state_1034506) 2
    state_1034507 state_1034522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034507
  · exact cover_1034522
#print axioms cover_1034506

def state_1034643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
theorem cover_1034643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034643 := by
  apply coveredState_split_literal (state := state_1034643) 2
    state_1034644 state_1034667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034644
  · exact cover_1034667
#print axioms cover_1034643

def state_1034505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
theorem cover_1034505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034505 := by
  apply coveredState_split_literal (state := state_1034505) 1
    state_1034506 state_1034643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034506
  · exact cover_1034643
#print axioms cover_1034505

def state_1034479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
theorem cover_1034479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034479 := by
  apply coveredState_split_literal (state := state_1034479) 0
    state_1034480 state_1034505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034480
  · exact cover_1034505
#print axioms cover_1034479

def state_1034403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 31)))
theorem cover_1034403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034403 := by
  apply coveredState_split_literal (state := state_1034403) 4
    state_1034404 state_1034479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034404
  · exact cover_1034479
#print axioms cover_1034403

def state_1034402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 31)))
theorem cover_1034402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034402 := by
  apply coveredState_split_literal (state := state_1034402) 3
    state_1034403 state_1034724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034403
  · exact cover_1034724
#print axioms cover_1034402

def state_1034380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
theorem cover_1034380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034380 := by
  apply coveredState_split_literal (state := state_1034380) 2
    state_1034381 state_1034402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034381
  · exact cover_1034402
#print axioms cover_1034380

def state_1034290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
theorem cover_1034290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034290 := by
  apply coveredState_split_literal (state := state_1034290) 1
    state_1034291 state_1034380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034291
  · exact cover_1034380
#print axioms cover_1034290

def state_1034276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
theorem cover_1034276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034276 := by
  apply coveredState_split_literal (state := state_1034276) 0
    state_1034277 state_1034290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034277
  · exact cover_1034290
#print axioms cover_1034276

def state_1034232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 15)))
theorem cover_1034232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034232 := by
  apply coveredState_split_literal (state := state_1034232) 4
    state_1034233 state_1034276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034233
  · exact cover_1034276
#print axioms cover_1034232

def state_1030266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 15)))
theorem cover_1030266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030266 := by
  apply coveredState_split_literal (state := state_1030266) 3
    state_1030267 state_1034232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030267
  · exact cover_1034232
#print axioms cover_1030266

def state_1030234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1030234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030234 := by
  apply coveredState_split_literal (state := state_1030234) 2
    state_1030235 state_1030266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030235
  · exact cover_1030266
#print axioms cover_1030234

def state_1029566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1029566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029566 := by
  apply coveredState_split_literal (state := state_1029566) 1
    state_1029567 state_1030234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029567
  · exact cover_1030234
#print axioms cover_1029566

def state_1029502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1029502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029502 := by
  apply coveredState_split_literal (state := state_1029502) 0
    state_1029503 state_1029566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029503
  · exact cover_1029566
#print axioms cover_1029502

def state_1029082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 7)))
theorem cover_1029082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029082 := by
  apply coveredState_split_literal (state := state_1029082) 4
    state_1029083 state_1029502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029083
  · exact cover_1029502
#print axioms cover_1029082

def state_1028532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
theorem cover_1028532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028532 := by
  apply coveredState_split_literal (state := state_1028532) 3
    state_1028533 state_1029082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028533
  · exact cover_1029082
#print axioms cover_1028532

def state_1034798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 15)))
theorem cover_1034798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034798 := by
  apply coveredState_split_literal (state := state_1034798) 1
    state_1034799 state_1034840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034799
  · exact cover_1034840
#print axioms cover_1034798

def state_1034796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 15)))
theorem cover_1034796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034796 := by
  apply coveredState_split_literal (state := state_1034796) 0
    state_1034797 state_1034798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034797
  · exact cover_1034798
#print axioms cover_1034796

def state_1034732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 7)))
theorem cover_1034732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034732 := by
  apply coveredState_split_literal (state := state_1034732) 4
    state_1034733 state_1034796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034733
  · exact cover_1034796
#print axioms cover_1034732

def state_1034934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 29)))
theorem cover_1034934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034934 := by
  apply coveredState_split_literal (state := state_1034934) 3
    state_1034935 state_1034968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034935
  · exact cover_1034968
#print axioms cover_1034934

def state_1034933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
theorem cover_1034933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034933 := by
  apply coveredState_split_literal (state := state_1034933) 2
    state_1034934 state_1035009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034934
  · exact cover_1035009
#print axioms cover_1034933

def state_1034932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
theorem cover_1034932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034932 := by
  apply coveredState_split_literal (state := state_1034932) 1
    state_1034933 state_1035010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034933
  · exact cover_1035010
#print axioms cover_1034932

def state_1035045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 29)))
theorem cover_1035045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035045 := by
  apply coveredState_split_literal (state := state_1035045) 3
    state_1035046 state_1035107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035046
  · exact cover_1035107
#print axioms cover_1035045

def state_1035044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
theorem cover_1035044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035044 := by
  apply coveredState_split_literal (state := state_1035044) 2
    state_1035045 state_1035150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035045
  · exact cover_1035150
#print axioms cover_1035044

def state_1035176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 29)))
theorem cover_1035176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035176 := by
  apply coveredState_split_literal (state := state_1035176) 3
    state_1035177 state_1035202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035177
  · exact cover_1035202
#print axioms cover_1035176

def state_1035175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
theorem cover_1035175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035175 := by
  apply coveredState_split_literal (state := state_1035175) 2
    state_1035176 state_1035241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035176
  · exact cover_1035241
#print axioms cover_1035175

def state_1035043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
theorem cover_1035043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035043 := by
  apply coveredState_split_literal (state := state_1035043) 1
    state_1035044 state_1035175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035044
  · exact cover_1035175
#print axioms cover_1035043

def state_1034931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
theorem cover_1034931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034931 := by
  apply coveredState_split_literal (state := state_1034931) 0
    state_1034932 state_1035043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034932
  · exact cover_1035043
#print axioms cover_1034931
end Mub6.Numerical.CircleFullD0.Forest
