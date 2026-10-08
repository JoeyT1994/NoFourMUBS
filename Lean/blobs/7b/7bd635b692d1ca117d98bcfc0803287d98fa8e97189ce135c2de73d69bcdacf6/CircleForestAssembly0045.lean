import CircleFullInterface
import CircleForestAssembly0044
import CircleForestChunk0179
import CircleForestChunk0180
import CircleForestChunk0181
import CircleForestChunk0182
import CircleForestChunk0183
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_980625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 19)))
theorem cover_980625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980625 := by
  apply coveredState_split_literal (state := state_980625) 0
    state_980626 state_980647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980626
  · exact cover_980647
#print axioms cover_980625

def state_980624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 19)))
theorem cover_980624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980624 := by
  apply coveredState_split_literal (state := state_980624) 2
    state_980625 state_980708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980625
  · exact cover_980708
#print axioms cover_980624

def state_980608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 9)))
theorem cover_980608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980608 := by
  apply coveredState_split_literal (state := state_980608) 4
    state_980609 state_980624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980609
  · exact cover_980624
#print axioms cover_980608

def state_980514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 9)))
theorem cover_980514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980514 := by
  apply coveredState_split_literal (state := state_980514) 3
    state_980515 state_980608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980515
  · exact cover_980608
#print axioms cover_980514

def state_980492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 9)))
theorem cover_980492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980492 := by
  apply coveredState_split_literal (state := state_980492) 1
    state_980493 state_980514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980493
  · exact cover_980514
#print axioms cover_980492

def state_980491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 9)))
theorem cover_980491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980491 := by
  apply coveredState_split_literal (state := state_980491) 0
    state_980492 state_980725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980492
  · exact cover_980725
#print axioms cover_980491

def state_980481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 4)))
theorem cover_980481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980481 := by
  apply coveredState_split_literal (state := state_980481) 4
    state_980482 state_980491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980482
  · exact cover_980491
#print axioms cover_980481

def state_980480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 4)))
theorem cover_980480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980480 := by
  apply coveredState_split_literal (state := state_980480) 2
    state_980481 state_980772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980481
  · exact cover_980772
#print axioms cover_980480

def state_980790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 4)))
theorem cover_980790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980790 := by
  apply coveredState_split_literal (state := state_980790) 4
    state_980791 state_980800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980791
  · exact cover_980800
#print axioms cover_980790

def state_980789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 4)))
theorem cover_980789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980789 := by
  apply coveredState_split_literal (state := state_980789) 2
    state_980790 state_980857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980790
  · exact cover_980857
#print axioms cover_980789

def state_980479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_980479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980479 := by
  apply coveredState_split_literal (state := state_980479) 3
    state_980480 state_980789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980480
  · exact cover_980789
#print axioms cover_980479

def state_980891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 9)))
theorem cover_980891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980891 := by
  apply coveredState_split_literal (state := state_980891) 3
    state_980892 state_980937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980892
  · exact cover_980937
#print axioms cover_980891

def state_980890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 9)))
theorem cover_980890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980890 := by
  apply coveredState_split_literal (state := state_980890) 0
    state_980891 state_980980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980891
  · exact cover_980980
#print axioms cover_980890

def state_980888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 4)))
theorem cover_980888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980888 := by
  apply coveredState_split_literal (state := state_980888) 4
    state_980889 state_980890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980889
  · exact cover_980890
#print axioms cover_980888

def state_980887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 4)))
theorem cover_980887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980887 := by
  apply coveredState_split_literal (state := state_980887) 2
    state_980888 state_981007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980888
  · exact cover_981007
#print axioms cover_980887

def state_981056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 9)))
theorem cover_981056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981056 := by
  apply coveredState_split_literal (state := state_981056) 0
    state_981057 state_981100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981057
  · exact cover_981100
#print axioms cover_981056

def state_981048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 4)))
theorem cover_981048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981048 := by
  apply coveredState_split_literal (state := state_981048) 4
    state_981049 state_981056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981049
  · exact cover_981056
#print axioms cover_981048

def state_981014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 4)))
theorem cover_981014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981014 := by
  apply coveredState_split_literal (state := state_981014) 2
    state_981015 state_981048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981015
  · exact cover_981048
#print axioms cover_981014

def state_980886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_980886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980886 := by
  apply coveredState_split_literal (state := state_980886) 3
    state_980887 state_981014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980887
  · exact cover_981014
#print axioms cover_980886

def state_980478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_980478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980478 := by
  apply coveredState_split_literal (state := state_980478) 1
    state_980479 state_980886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980479
  · exact cover_980886
#print axioms cover_980478

def state_980306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_980306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980306 := by
  apply coveredState_split_literal (state := state_980306) 0
    state_980307 state_980478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980307
  · exact cover_980478
#print axioms cover_980306

def state_981137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_981137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981137 := by
  apply coveredState_split_literal (state := state_981137) 3
    state_981138 state_981167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981138
  · exact cover_981167
#print axioms cover_981137

def state_981247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_981247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981247 := by
  apply coveredState_split_literal (state := state_981247) 0
    state_981248 state_981253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981248
  · exact cover_981253
#print axioms cover_981247

def state_981221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
theorem cover_981221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981221 := by
  apply coveredState_split_literal (state := state_981221) 3
    state_981222 state_981247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981222
  · exact cover_981247
#print axioms cover_981221

def state_981220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
theorem cover_981220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981220 := by
  apply coveredState_split_literal (state := state_981220) 2
    state_981221 state_981316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981221
  · exact cover_981316
#print axioms cover_981220

def state_981219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_981219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981219 := by
  apply coveredState_split_literal (state := state_981219) 4
    state_981220 state_981327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981220
  · exact cover_981327
#print axioms cover_981219

def state_981379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_981379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981379 := by
  apply coveredState_split_literal (state := state_981379) 1
    state_981380 state_981429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981380
  · exact cover_981429
#print axioms cover_981379

def state_981363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_981363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981363 := by
  apply coveredState_split_literal (state := state_981363) 0
    state_981364 state_981379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981364
  · exact cover_981379
#print axioms cover_981363

def state_981345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_981345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981345 := by
  apply coveredState_split_literal (state := state_981345) 2
    state_981346 state_981363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981346
  · exact cover_981363
#print axioms cover_981345

def state_981344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_981344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981344 := by
  apply coveredState_split_literal (state := state_981344) 4
    state_981345 state_981452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981345
  · exact cover_981452
#print axioms cover_981344

def state_981218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_981218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981218 := by
  apply coveredState_split_literal (state := state_981218) 3
    state_981219 state_981344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981219
  · exact cover_981344
#print axioms cover_981218

def state_981136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_981136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981136 := by
  apply coveredState_split_literal (state := state_981136) 1
    state_981137 state_981218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981137
  · exact cover_981218
#print axioms cover_981136
end Mub6.Numerical.CircleFullD0.Forest
