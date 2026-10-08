import CircleFullInterface
import CircleForestAssembly0156
import CircleForestChunk0600
import CircleForestChunk0602
import CircleForestChunk0603
import CircleForestChunk0604
import CircleForestChunk0605
import CircleForestChunk0606
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1333295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 51)))
theorem cover_1333295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333295 := by
  apply coveredState_split_literal (state := state_1333295) 4
    state_1333296 state_1333363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333296
  · exact cover_1333363
#print axioms cover_1333295

def state_1333279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 51)))
theorem cover_1333279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333279 := by
  apply coveredState_split_literal (state := state_1333279) 0
    state_1333280 state_1333295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333280
  · exact cover_1333295
#print axioms cover_1333279

def state_1333459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 125 else (if j.val < 4 then 190 else 204)))
theorem cover_1333459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333459 := by
  apply coveredState_split_literal (state := state_1333459) 0
    state_1333460 state_1333507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333460
  · exact cover_1333507
#print axioms cover_1333459

def state_1333458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 125 else (if j.val < 4 then 190 else 102)))
theorem cover_1333458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333458 := by
  apply coveredState_split_literal (state := state_1333458) 4
    state_1333459 state_1333554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333459
  · exact cover_1333554
#print axioms cover_1333458

def state_1333587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 125 else (if j.val < 4 then 191 else 102)))
theorem cover_1333587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333587 := by
  apply coveredState_split_literal (state := state_1333587) 4
    state_1333588 state_1333631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333588
  · exact cover_1333631
#print axioms cover_1333587

def state_1333457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 125 else (if j.val < 4 then 95 else 102)))
theorem cover_1333457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333457 := by
  apply coveredState_split_literal (state := state_1333457) 3
    state_1333458 state_1333587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333458
  · exact cover_1333587
#print axioms cover_1333457

def state_1333429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 102)))
theorem cover_1333429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333429 := by
  apply coveredState_split_literal (state := state_1333429) 2
    state_1333430 state_1333457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333430
  · exact cover_1333457
#print axioms cover_1333429

def state_1333387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 102)))
theorem cover_1333387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333387 := by
  apply coveredState_split_literal (state := state_1333387) 1
    state_1333388 state_1333429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333388
  · exact cover_1333429
#print axioms cover_1333387

def state_1333386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 51)))
theorem cover_1333386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333386 := by
  apply coveredState_split_literal (state := state_1333386) 4
    state_1333387 state_1333660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333387
  · exact cover_1333660
#print axioms cover_1333386

def state_1333364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 51)))
theorem cover_1333364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333364 := by
  apply coveredState_split_literal (state := state_1333364) 0
    state_1333365 state_1333386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333365
  · exact cover_1333386
#print axioms cover_1333364

def state_1333278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 47 else 51)))
theorem cover_1333278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333278 := by
  apply coveredState_split_literal (state := state_1333278) 3
    state_1333279 state_1333364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333279
  · exact cover_1333364
#print axioms cover_1333278

def state_1333812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 190 else 205)))
theorem cover_1333812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333812 := by
  apply coveredState_split_literal (state := state_1333812) 0
    state_1333813 state_1333846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333813
  · exact cover_1333846
#print axioms cover_1333812

def state_1333764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 190 else 102)))
theorem cover_1333764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333764 := by
  apply coveredState_split_literal (state := state_1333764) 4
    state_1333765 state_1333812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333765
  · exact cover_1333812
#print axioms cover_1333764

def state_1333909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 191 else 205)))
theorem cover_1333909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333909 := by
  apply coveredState_split_literal (state := state_1333909) 0
    state_1333910 state_1333935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333910
  · exact cover_1333935
#print axioms cover_1333909

def state_1333879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 191 else 102)))
theorem cover_1333879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333879 := by
  apply coveredState_split_literal (state := state_1333879) 4
    state_1333880 state_1333909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333880
  · exact cover_1333909
#print axioms cover_1333879

def state_1333763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 95 else 102)))
theorem cover_1333763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333763 := by
  apply coveredState_split_literal (state := state_1333763) 3
    state_1333764 state_1333879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333764
  · exact cover_1333879
#print axioms cover_1333763

def state_1333762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 102)))
theorem cover_1333762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333762 := by
  apply coveredState_split_literal (state := state_1333762) 2
    state_1333763 state_1333992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333763
  · exact cover_1333992
#print axioms cover_1333762

def state_1333750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 102)))
theorem cover_1333750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333750 := by
  apply coveredState_split_literal (state := state_1333750) 1
    state_1333751 state_1333762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333751
  · exact cover_1333762
#print axioms cover_1333750

def state_1333749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 51)))
theorem cover_1333749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333749 := by
  apply coveredState_split_literal (state := state_1333749) 4
    state_1333750 state_1334005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333750
  · exact cover_1334005
#print axioms cover_1333749

def state_1333719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 51)))
theorem cover_1333719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333719 := by
  apply coveredState_split_literal (state := state_1333719) 0
    state_1333720 state_1333749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333720
  · exact cover_1333749
#print axioms cover_1333719

def state_1333679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 63 else (if j.val < 4 then 47 else 51)))
theorem cover_1333679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333679 := by
  apply coveredState_split_literal (state := state_1333679) 3
    state_1333680 state_1333719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333680
  · exact cover_1333719
#print axioms cover_1333679

def state_1333277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
theorem cover_1333277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333277 := by
  apply coveredState_split_literal (state := state_1333277) 2
    state_1333278 state_1333679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333278
  · exact cover_1333679
#print axioms cover_1333277

def state_1333275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
theorem cover_1333275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333275 := by
  apply coveredState_split_literal (state := state_1333275) 1
    state_1333276 state_1333277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1333276
  · exact cover_1333277
#print axioms cover_1333275

def state_1332897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 25)))
theorem cover_1332897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332897 := by
  apply coveredState_split_literal (state := state_1332897) 4
    state_1332898 state_1333275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332898
  · exact cover_1333275
#print axioms cover_1332897

def state_1332865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 25)))
theorem cover_1332865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332865 := by
  apply coveredState_split_literal (state := state_1332865) 0
    state_1332866 state_1332897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332866
  · exact cover_1332897
#print axioms cover_1332865

def state_1332807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 23 else 25)))
theorem cover_1332807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332807 := by
  apply coveredState_split_literal (state := state_1332807) 3
    state_1332808 state_1332865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332808
  · exact cover_1332865
#print axioms cover_1332807

def state_1332247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
theorem cover_1332247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332247 := by
  apply coveredState_split_literal (state := state_1332247) 2
    state_1332248 state_1332807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332248
  · exact cover_1332807
#print axioms cover_1332247

def state_1334151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 38) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 51)))
theorem cover_1334151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334151 := by
  apply coveredState_split_literal (state := state_1334151) 4
    state_1334152 state_1334193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334152
  · exact cover_1334193
#print axioms cover_1334151

def state_1334133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 51)))
theorem cover_1334133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334133 := by
  apply coveredState_split_literal (state := state_1334133) 0
    state_1334134 state_1334151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334134
  · exact cover_1334151
#print axioms cover_1334133

def state_1334117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 63 else (if j.val < 4 then 47 else 51)))
theorem cover_1334117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334117 := by
  apply coveredState_split_literal (state := state_1334117) 3
    state_1334118 state_1334133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334118
  · exact cover_1334133
#print axioms cover_1334117

def state_1334101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
theorem cover_1334101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334101 := by
  apply coveredState_split_literal (state := state_1334101) 2
    state_1334102 state_1334117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334102
  · exact cover_1334117
#print axioms cover_1334101

def state_1334100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
theorem cover_1334100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334100 := by
  apply coveredState_split_literal (state := state_1334100) 1
    state_1334101 state_1334216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1334101
  · exact cover_1334216
#print axioms cover_1334100
end Mub6.Numerical.CircleFullD0.Forest
