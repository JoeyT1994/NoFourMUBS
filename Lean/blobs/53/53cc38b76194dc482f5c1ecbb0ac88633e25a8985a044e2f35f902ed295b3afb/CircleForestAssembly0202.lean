import CircleFullInterface
import CircleForestAssembly0200
import CircleForestAssembly0201
import CircleForestChunk0753
import CircleForestChunk0762
import CircleForestChunk0763
import CircleForestChunk0764
import CircleForestChunk0765
import CircleForestChunk0766
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1481789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1481789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481789 := by
  apply coveredState_split_literal (state := state_1481789) 1
    state_1481790 state_1483123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481790
  · exact cover_1483123
#print axioms cover_1481789

def state_1481701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 26)))
theorem cover_1481701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481701 := by
  apply coveredState_split_literal (state := state_1481701) 2
    state_1481702 state_1481789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481702
  · exact cover_1481789
#print axioms cover_1481701

def state_1483876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 27)))
theorem cover_1483876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483876 := by
  apply coveredState_split_literal (state := state_1483876) 1
    state_1483877 state_1483890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483877
  · exact cover_1483890
#print axioms cover_1483876

def state_1483862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 27)))
theorem cover_1483862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483862 := by
  apply coveredState_split_literal (state := state_1483862) 2
    state_1483863 state_1483876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483863
  · exact cover_1483876
#print axioms cover_1483862

def state_1481700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
theorem cover_1481700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481700 := by
  apply coveredState_split_literal (state := state_1481700) 4
    state_1481701 state_1483862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481701
  · exact cover_1483862
#print axioms cover_1481700

def state_1481664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1481664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481664 := by
  apply coveredState_split_literal (state := state_1481664) 3
    state_1481665 state_1481700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481665
  · exact cover_1481700
#print axioms cover_1481664

def state_1481663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1481663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481663 := by
  apply coveredState_split_literal (state := state_1481663) 0
    state_1481664 state_1483947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481664
  · exact cover_1483947
#print axioms cover_1481663

def state_1481653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1481653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481653 := by
  apply coveredState_split_literal (state := state_1481653) 2
    state_1481654 state_1481663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481654
  · exact cover_1481663
#print axioms cover_1481653

def state_1483996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
theorem cover_1483996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483996 := by
  apply coveredState_split_literal (state := state_1483996) 4
    state_1483997 state_1484024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483997
  · exact cover_1484024
#print axioms cover_1483996

def state_1484087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1484087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484087 := by
  apply coveredState_split_literal (state := state_1484087) 0
    state_1484088 state_1484141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484088
  · exact cover_1484141
#print axioms cover_1484087

def state_1484085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 26)))
theorem cover_1484085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484085 := by
  apply coveredState_split_literal (state := state_1484085) 2
    state_1484086 state_1484087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484086
  · exact cover_1484087
#print axioms cover_1484085

def state_1484084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 26)))
theorem cover_1484084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484084 := by
  apply coveredState_split_literal (state := state_1484084) 1
    state_1484085 state_1484178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484085
  · exact cover_1484178
#print axioms cover_1484084

def state_1484285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 27)))
theorem cover_1484285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484285 := by
  apply coveredState_split_literal (state := state_1484285) 1
    state_1484286 state_1484345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484286
  · exact cover_1484345
#print axioms cover_1484285

def state_1484247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 27)))
theorem cover_1484247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484247 := by
  apply coveredState_split_literal (state := state_1484247) 2
    state_1484248 state_1484285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484248
  · exact cover_1484285
#print axioms cover_1484247

def state_1484203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 27)))
theorem cover_1484203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484203 := by
  apply coveredState_split_literal (state := state_1484203) 3
    state_1484204 state_1484247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484204
  · exact cover_1484247
#print axioms cover_1484203

def state_1484410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 27)))
theorem cover_1484410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484410 := by
  apply coveredState_split_literal (state := state_1484410) 1
    state_1484411 state_1484456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484411
  · exact cover_1484456
#print axioms cover_1484410

def state_1484404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 27)))
theorem cover_1484404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484404 := by
  apply coveredState_split_literal (state := state_1484404) 2
    state_1484405 state_1484410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484405
  · exact cover_1484410
#print axioms cover_1484404

def state_1484390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 27)))
theorem cover_1484390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484390 := by
  apply coveredState_split_literal (state := state_1484390) 3
    state_1484391 state_1484404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484391
  · exact cover_1484404
#print axioms cover_1484390

def state_1484202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 27)))
theorem cover_1484202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484202 := by
  apply coveredState_split_literal (state := state_1484202) 0
    state_1484203 state_1484390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484203
  · exact cover_1484390
#print axioms cover_1484202

def state_1484180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 27)))
theorem cover_1484180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484180 := by
  apply coveredState_split_literal (state := state_1484180) 2
    state_1484181 state_1484202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484181
  · exact cover_1484202
#print axioms cover_1484180

def state_1484528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 27)))
theorem cover_1484528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484528 := by
  apply coveredState_split_literal (state := state_1484528) 3
    state_1484529 state_1484566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484529
  · exact cover_1484566
#print axioms cover_1484528

def state_1484609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 27)))
theorem cover_1484609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484609 := by
  apply coveredState_split_literal (state := state_1484609) 3
    state_1484610 state_1484645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484610
  · exact cover_1484645
#print axioms cover_1484609

def state_1484527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 27)))
theorem cover_1484527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484527 := by
  apply coveredState_split_literal (state := state_1484527) 0
    state_1484528 state_1484609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484528
  · exact cover_1484609
#print axioms cover_1484527

def state_1484513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 27)))
theorem cover_1484513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484513 := by
  apply coveredState_split_literal (state := state_1484513) 2
    state_1484514 state_1484527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484514
  · exact cover_1484527
#print axioms cover_1484513

def state_1484179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 27)))
theorem cover_1484179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484179 := by
  apply coveredState_split_literal (state := state_1484179) 1
    state_1484180 state_1484513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484180
  · exact cover_1484513
#print axioms cover_1484179

def state_1484083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
theorem cover_1484083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484083 := by
  apply coveredState_split_literal (state := state_1484083) 4
    state_1484084 state_1484179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484084
  · exact cover_1484179
#print axioms cover_1484083

def state_1483995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1483995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483995 := by
  apply coveredState_split_literal (state := state_1483995) 3
    state_1483996 state_1484083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483996
  · exact cover_1484083
#print axioms cover_1483995

def state_1483994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1483994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483994 := by
  apply coveredState_split_literal (state := state_1483994) 0
    state_1483995 state_1484676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483995
  · exact cover_1484676
#print axioms cover_1483994

def state_1483968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1483968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483968 := by
  apply coveredState_split_literal (state := state_1483968) 2
    state_1483969 state_1483994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483969
  · exact cover_1483994
#print axioms cover_1483968

def state_1481652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1481652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481652 := by
  apply coveredState_split_literal (state := state_1481652) 1
    state_1481653 state_1483968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481653
  · exact cover_1483968
#print axioms cover_1481652

def state_1481338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1481338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481338 := by
  apply coveredState_split_literal (state := state_1481338) 4
    state_1481339 state_1481652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481339
  · exact cover_1481652
#print axioms cover_1481338

def state_1484753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
theorem cover_1484753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484753 := by
  apply coveredState_split_literal (state := state_1484753) 1
    state_1484754 state_1484813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484754
  · exact cover_1484813
#print axioms cover_1484753
end Mub6.Numerical.CircleFullD0.Forest
