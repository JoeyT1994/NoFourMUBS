import CircleFullInterface
import CircleForestAssembly0022
import CircleForestChunk0091
import CircleForestChunk0095
import CircleForestChunk0097
import CircleForestChunk0098
import CircleForestChunk0099
import CircleForestChunk0100
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_960757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_960757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960757 := by
  apply coveredState_split_literal (state := state_960757) 2
    state_960758 state_960785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960758
  · exact cover_960785
#print axioms cover_960757

def state_960417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_960417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960417 := by
  apply coveredState_split_literal (state := state_960417) 1
    state_960418 state_960757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960418
  · exact cover_960757
#print axioms cover_960417

def state_960416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_960416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960416 := by
  apply coveredState_split_literal (state := state_960416) 0
    state_960417 state_960880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960417
  · exact cover_960880
#print axioms cover_960416

def state_960386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 27)))
theorem cover_960386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960386 := by
  apply coveredState_split_literal (state := state_960386) 3
    state_960387 state_960416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960387
  · exact cover_960416
#print axioms cover_960386

def state_960372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_960372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960372 := by
  apply coveredState_split_literal (state := state_960372) 4
    state_960373 state_960386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960373
  · exact cover_960386
#print axioms cover_960372

def state_960346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_960346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960346 := by
  apply coveredState_split_literal (state := state_960346) 2
    state_960347 state_960372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960347
  · exact cover_960372
#print axioms cover_960346

def state_960345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_960345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960345 := by
  apply coveredState_split_literal (state := state_960345) 1
    state_960346 state_960901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960346
  · exact cover_960901
#print axioms cover_960345

def state_959305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_959305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959305 := by
  apply coveredState_split_literal (state := state_959305) 0
    state_959306 state_960345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959306
  · exact cover_960345
#print axioms cover_959305

def state_960937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
theorem cover_960937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960937 := by
  apply coveredState_split_literal (state := state_960937) 1
    state_960938 state_961001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960938
  · exact cover_961001
#print axioms cover_960937

def state_961005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 13)))
theorem cover_961005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961005 := by
  apply coveredState_split_literal (state := state_961005) 4
    state_961006 state_961007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961006
  · exact cover_961007
#print axioms cover_961005

def state_961003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
theorem cover_961003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961003 := by
  apply coveredState_split_literal (state := state_961003) 2
    state_961004 state_961005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961004
  · exact cover_961005
#print axioms cover_961003

def state_961002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
theorem cover_961002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961002 := by
  apply coveredState_split_literal (state := state_961002) 1
    state_961003 state_961070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961003
  · exact cover_961070
#print axioms cover_961002

def state_960936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
theorem cover_960936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960936 := by
  apply coveredState_split_literal (state := state_960936) 0
    state_960937 state_961002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_960937
  · exact cover_961002
#print axioms cover_960936

def state_959304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
theorem cover_959304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959304 := by
  apply coveredState_split_literal (state := state_959304) 3
    state_959305 state_960936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959305
  · exact cover_960936
#print axioms cover_959304

def state_959298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_959298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959298 := by
  apply coveredState_split_literal (state := state_959298) 4
    state_959299 state_959304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959299
  · exact cover_959304
#print axioms cover_959298

def state_961184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 54)))
theorem cover_961184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961184 := by
  apply coveredState_split_literal (state := state_961184) 4
    state_961185 state_961192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961185
  · exact cover_961192
#print axioms cover_961184

def state_961183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_961183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961183 := by
  apply coveredState_split_literal (state := state_961183) 2
    state_961184 state_961249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961184
  · exact cover_961249
#print axioms cover_961183

def state_961182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_961182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961182 := by
  apply coveredState_split_literal (state := state_961182) 1
    state_961183 state_961290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961183
  · exact cover_961290
#print axioms cover_961182

def state_961160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_961160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961160 := by
  apply coveredState_split_literal (state := state_961160) 0
    state_961161 state_961182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961161
  · exact cover_961182
#print axioms cover_961160

def state_961144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 54)))
theorem cover_961144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961144 := by
  apply coveredState_split_literal (state := state_961144) 3
    state_961145 state_961160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961145
  · exact cover_961160
#print axioms cover_961144

def state_961378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 208 else (if j.val < 4 then 71 else 220)))
theorem cover_961378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961378 := by
  apply coveredState_split_literal (state := state_961378) 3
    state_961379 state_961422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961379
  · exact cover_961422
#print axioms cover_961378

def state_961377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 208 else (if j.val < 4 then 71 else 110)))
theorem cover_961377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961377 := by
  apply coveredState_split_literal (state := state_961377) 4
    state_961378 state_961455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961378
  · exact cover_961455
#print axioms cover_961377

def state_961468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 110)))
theorem cover_961468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961468 := by
  apply coveredState_split_literal (state := state_961468) 4
    state_961469 state_961528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961469
  · exact cover_961528
#print axioms cover_961468

def state_961376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_961376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961376 := by
  apply coveredState_split_literal (state := state_961376) 2
    state_961377 state_961468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961377
  · exact cover_961468
#print axioms cover_961376

def state_961374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_961374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961374 := by
  apply coveredState_split_literal (state := state_961374) 1
    state_961375 state_961376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961375
  · exact cover_961376
#print axioms cover_961374

def state_961364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_961364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961364 := by
  apply coveredState_split_literal (state := state_961364) 0
    state_961365 state_961374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961365
  · exact cover_961374
#print axioms cover_961364

def state_961338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 110)))
theorem cover_961338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961338 := by
  apply coveredState_split_literal (state := state_961338) 3
    state_961339 state_961364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961339
  · exact cover_961364
#print axioms cover_961338

def state_961337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 55)))
theorem cover_961337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961337 := by
  apply coveredState_split_literal (state := state_961337) 4
    state_961338 state_961539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961338
  · exact cover_961539
#print axioms cover_961337

def state_961336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_961336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961336 := by
  apply coveredState_split_literal (state := state_961336) 2
    state_961337 state_961552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961337
  · exact cover_961552
#print axioms cover_961336

def state_961593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_961593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961593 := by
  apply coveredState_split_literal (state := state_961593) 1
    state_961594 state_961651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961594
  · exact cover_961651
#print axioms cover_961593

def state_961585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_961585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961585 := by
  apply coveredState_split_literal (state := state_961585) 0
    state_961586 state_961593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961586
  · exact cover_961593
#print axioms cover_961585

def state_961569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 110)))
theorem cover_961569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961569 := by
  apply coveredState_split_literal (state := state_961569) 3
    state_961570 state_961585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961570
  · exact cover_961585
#print axioms cover_961569
end Mub6.Numerical.CircleFullD0.Forest
