import D0FullInterface
import D0ForestAssembly0216
import D0ForestChunk0818
import D0ForestChunk0819
import D0ForestChunk0820
import D0ForestChunk0822
import D0ForestChunk0823
import D0ForestChunk0824
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1497734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 59)))
theorem cover_1497734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497734 := by
  apply coveredState_split_literal (state := state_1497734) 1
    state_1497735 state_1497858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497735
  · exact cover_1497858
#print axioms cover_1497734

def state_1497616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 59)))
theorem cover_1497616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497616 := by
  apply coveredState_split_literal (state := state_1497616) 3
    state_1497617 state_1497734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497617
  · exact cover_1497734
#print axioms cover_1497616

def state_1497615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 59)))
theorem cover_1497615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497615 := by
  apply coveredState_split_literal (state := state_1497615) 0
    state_1497616 state_1497951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497616
  · exact cover_1497951
#print axioms cover_1497615

def state_1498006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 103 else 119)))
theorem cover_1498006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498006 := by
  apply coveredState_split_literal (state := state_1498006) 3
    state_1498007 state_1498026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498007
  · exact cover_1498026
#print axioms cover_1498006

def state_1498005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 103 else 119)))
theorem cover_1498005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498005 := by
  apply coveredState_split_literal (state := state_1498005) 0
    state_1498006 state_1498073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498006
  · exact cover_1498073
#print axioms cover_1498005

def state_1498004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 119)))
theorem cover_1498004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498004 := by
  apply coveredState_split_literal (state := state_1498004) 2
    state_1498005 state_1498080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498005
  · exact cover_1498080
#print axioms cover_1498004

def state_1497980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 59)))
theorem cover_1497980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497980 := by
  apply coveredState_split_literal (state := state_1497980) 4
    state_1497981 state_1498004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497981
  · exact cover_1498004
#print axioms cover_1497980

def state_1497979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 59)))
theorem cover_1497979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497979 := by
  apply coveredState_split_literal (state := state_1497979) 1
    state_1497980 state_1498081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497980
  · exact cover_1498081
#print axioms cover_1497979

def state_1497975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
theorem cover_1497975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497975 := by
  apply coveredState_split_literal (state := state_1497975) 3
    state_1497976 state_1497979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497976
  · exact cover_1497979
#print axioms cover_1497975

def state_1497974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
theorem cover_1497974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497974 := by
  apply coveredState_split_literal (state := state_1497974) 0
    state_1497975 state_1498090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497975
  · exact cover_1498090
#print axioms cover_1497974

def state_1497614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 59)))
theorem cover_1497614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497614 := by
  apply coveredState_split_literal (state := state_1497614) 2
    state_1497615 state_1497974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497615
  · exact cover_1497974
#print axioms cover_1497614

def state_1497586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 29)))
theorem cover_1497586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497586 := by
  apply coveredState_split_literal (state := state_1497586) 4
    state_1497587 state_1497614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497587
  · exact cover_1497614
#print axioms cover_1497586

def state_1497300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 29)))
theorem cover_1497300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497300 := by
  apply coveredState_split_literal (state := state_1497300) 1
    state_1497301 state_1497586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497301
  · exact cover_1497586
#print axioms cover_1497300

def state_1497242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
theorem cover_1497242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497242 := by
  apply coveredState_split_literal (state := state_1497242) 3
    state_1497243 state_1497300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497243
  · exact cover_1497300
#print axioms cover_1497242

def state_1497241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
theorem cover_1497241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497241 := by
  apply coveredState_split_literal (state := state_1497241) 0
    state_1497242 state_1498095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497242
  · exact cover_1498095
#print axioms cover_1497241

def state_1497225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 14)))
theorem cover_1497225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497225 := by
  apply coveredState_split_literal (state := state_1497225) 4
    state_1497226 state_1497241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497226
  · exact cover_1497241
#print axioms cover_1497225

def state_1497224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1497224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497224 := by
  apply coveredState_split_literal (state := state_1497224) 2
    state_1497225 state_1498118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497225
  · exact cover_1498118
#print axioms cover_1497224

def state_1497058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1497058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497058 := by
  apply coveredState_split_literal (state := state_1497058) 1
    state_1497059 state_1497224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497059
  · exact cover_1497224
#print axioms cover_1497058

def state_1497034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1497034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497034 := by
  apply coveredState_split_literal (state := state_1497034) 3
    state_1497035 state_1497058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497035
  · exact cover_1497058
#print axioms cover_1497034

def state_1494042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1494042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494042 := by
  apply coveredState_split_literal (state := state_1494042) 0
    state_1494043 state_1497034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494043
  · exact cover_1497034
#print axioms cover_1494042

def state_1498219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 101 else 60)))
theorem cover_1498219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498219 := by
  apply coveredState_split_literal (state := state_1498219) 1
    state_1498220 state_1498233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498220
  · exact cover_1498233
#print axioms cover_1498219

def state_1498205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 60)))
theorem cover_1498205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498205 := by
  apply coveredState_split_literal (state := state_1498205) 3
    state_1498206 state_1498219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498206
  · exact cover_1498219
#print axioms cover_1498205

def state_1498191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 60)))
theorem cover_1498191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498191 := by
  apply coveredState_split_literal (state := state_1498191) 0
    state_1498192 state_1498205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498192
  · exact cover_1498205
#print axioms cover_1498191

def state_1498190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 30)))
theorem cover_1498190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498190 := by
  apply coveredState_split_literal (state := state_1498190) 4
    state_1498191 state_1498286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498191
  · exact cover_1498286
#print axioms cover_1498190

def state_1498189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 30)))
theorem cover_1498189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498189 := by
  apply coveredState_split_literal (state := state_1498189) 2
    state_1498190 state_1498287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498190
  · exact cover_1498287
#print axioms cover_1498189

def state_1498187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 30)))
theorem cover_1498187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498187 := by
  apply coveredState_split_literal (state := state_1498187) 1
    state_1498188 state_1498189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498188
  · exact cover_1498189
#print axioms cover_1498187

def state_1498496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 205 else 120)))
theorem cover_1498496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498496 := by
  apply coveredState_split_literal (state := state_1498496) 1
    state_1498497 state_1498536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498497
  · exact cover_1498536
#print axioms cover_1498496

def state_1498470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 120)))
theorem cover_1498470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498470 := by
  apply coveredState_split_literal (state := state_1498470) 3
    state_1498471 state_1498496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498471
  · exact cover_1498496
#print axioms cover_1498470

def state_1498456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 120)))
theorem cover_1498456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498456 := by
  apply coveredState_split_literal (state := state_1498456) 0
    state_1498457 state_1498470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498457
  · exact cover_1498470
#print axioms cover_1498456

def state_1498455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 60)))
theorem cover_1498455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498455 := by
  apply coveredState_split_literal (state := state_1498455) 4
    state_1498456 state_1498563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498456
  · exact cover_1498563
#print axioms cover_1498455

def state_1498417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 60)))
theorem cover_1498417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498417 := by
  apply coveredState_split_literal (state := state_1498417) 2
    state_1498418 state_1498455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498418
  · exact cover_1498455
#print axioms cover_1498417

def state_1498365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 60)))
theorem cover_1498365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498365 := by
  apply coveredState_split_literal (state := state_1498365) 1
    state_1498366 state_1498417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498366
  · exact cover_1498417
#print axioms cover_1498365
end Mub6.Numerical.CircleFullD0.Forest
