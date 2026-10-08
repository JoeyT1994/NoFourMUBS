import CircleFullInterface
import CircleForestAssembly0166
import CircleForestAssembly0167
import CircleForestChunk0654
import CircleForestChunk0656
import CircleForestChunk0657
import CircleForestChunk0658
import CircleForestChunk0659
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_762716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_762716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762716 := by
  apply coveredState_split_literal (state := state_762716) 2
    state_762717 state_762822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762717
  · exact cover_762822
#print axioms cover_762716

def state_762654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_762654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762654 := by
  apply coveredState_split_literal (state := state_762654) 1
    state_762655 state_762716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762655
  · exact cover_762716
#print axioms cover_762654

def state_762454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_762454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762454 := by
  apply coveredState_split_literal (state := state_762454) 0
    state_762455 state_762654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_762455
  · exact cover_762654
#print axioms cover_762454

def state_761792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_761792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761792 := by
  apply coveredState_split_literal (state := state_761792) 4
    state_761793 state_762454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761793
  · exact cover_762454
#print axioms cover_761792

def state_761620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_761620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761620 := by
  apply coveredState_split_literal (state := state_761620) 3
    state_761621 state_761792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761621
  · exact cover_761792
#print axioms cover_761620

def state_763128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_763128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763128 := by
  apply coveredState_split_literal (state := state_763128) 3
    state_763129 state_763190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763129
  · exact cover_763190
#print axioms cover_763128

def state_763127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_763127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763127 := by
  apply coveredState_split_literal (state := state_763127) 2
    state_763128 state_763213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763128
  · exact cover_763213
#print axioms cover_763127

def state_763126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_763126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763126 := by
  apply coveredState_split_literal (state := state_763126) 1
    state_763127 state_763224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763127
  · exact cover_763224
#print axioms cover_763126

def state_763289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 4)))
theorem cover_763289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763289 := by
  apply coveredState_split_literal (state := state_763289) 4
    state_763290 state_763353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763290
  · exact cover_763353
#print axioms cover_763289

def state_763288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_763288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763288 := by
  apply coveredState_split_literal (state := state_763288) 3
    state_763289 state_763368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763289
  · exact cover_763368
#print axioms cover_763288

def state_763270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_763270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763270 := by
  apply coveredState_split_literal (state := state_763270) 2
    state_763271 state_763288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763271
  · exact cover_763288
#print axioms cover_763270

def state_763248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_763248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763248 := by
  apply coveredState_split_literal (state := state_763248) 1
    state_763249 state_763270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763249
  · exact cover_763270
#print axioms cover_763248

def state_763401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_763401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763401 := by
  apply coveredState_split_literal (state := state_763401) 3
    state_763402 state_763453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763402
  · exact cover_763453
#print axioms cover_763401

def state_763397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_763397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763397 := by
  apply coveredState_split_literal (state := state_763397) 2
    state_763398 state_763401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763398
  · exact cover_763401
#print axioms cover_763397

def state_763389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_763389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763389 := by
  apply coveredState_split_literal (state := state_763389) 1
    state_763390 state_763397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763390
  · exact cover_763397
#print axioms cover_763389

def state_763247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_763247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763247 := by
  apply coveredState_split_literal (state := state_763247) 0
    state_763248 state_763389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763248
  · exact cover_763389
#print axioms cover_763247

def state_763246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_763246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763246 := by
  apply coveredState_split_literal (state := state_763246) 4
    state_763247 state_763474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763247
  · exact cover_763474
#print axioms cover_763246

def state_763245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_763245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763245 := by
  apply coveredState_split_literal (state := state_763245) 3
    state_763246 state_763477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763246
  · exact cover_763477
#print axioms cover_763245

def state_763490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_763490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763490 := by
  apply coveredState_split_literal (state := state_763490) 0
    state_763491 state_763512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763491
  · exact cover_763512
#print axioms cover_763490

def state_763489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_763489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763489 := by
  apply coveredState_split_literal (state := state_763489) 4
    state_763490 state_763569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763490
  · exact cover_763569
#print axioms cover_763489

def state_763488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_763488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763488 := by
  apply coveredState_split_literal (state := state_763488) 3
    state_763489 state_763580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763489
  · exact cover_763580
#print axioms cover_763488

def state_763244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_763244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763244 := by
  apply coveredState_split_literal (state := state_763244) 2
    state_763245 state_763488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763245
  · exact cover_763488
#print axioms cover_763244

def state_763602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_763602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763602 := by
  apply coveredState_split_literal (state := state_763602) 0
    state_763603 state_763624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763603
  · exact cover_763624
#print axioms cover_763602

def state_763601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_763601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763601 := by
  apply coveredState_split_literal (state := state_763601) 4
    state_763602 state_763677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763602
  · exact cover_763677
#print axioms cover_763601

def state_763600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_763600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763600 := by
  apply coveredState_split_literal (state := state_763600) 3
    state_763601 state_763694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763601
  · exact cover_763694
#print axioms cover_763600

def state_763707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_763707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763707 := by
  apply coveredState_split_literal (state := state_763707) 3
    state_763708 state_763749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763708
  · exact cover_763749
#print axioms cover_763707

def state_763599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_763599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763599 := by
  apply coveredState_split_literal (state := state_763599) 2
    state_763600 state_763707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763600
  · exact cover_763707
#print axioms cover_763599

def state_763243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_763243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763243 := by
  apply coveredState_split_literal (state := state_763243) 1
    state_763244 state_763599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763244
  · exact cover_763599
#print axioms cover_763243

def state_763125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_763125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763125 := by
  apply coveredState_split_literal (state := state_763125) 0
    state_763126 state_763243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763126
  · exact cover_763243
#print axioms cover_763125

def state_763124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_763124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763124 := by
  apply coveredState_split_literal (state := state_763124) 4
    state_763125 state_763774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763125
  · exact cover_763774
#print axioms cover_763124

def state_763933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_763933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763933 := by
  apply coveredState_split_literal (state := state_763933) 1
    state_763934 state_763991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763934
  · exact cover_763991
#print axioms cover_763933

def state_763897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_763897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763897 := by
  apply coveredState_split_literal (state := state_763897) 0
    state_763898 state_763933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763898
  · exact cover_763933
#print axioms cover_763897
end Mub6.Numerical.CircleFullPrototype.Forest
