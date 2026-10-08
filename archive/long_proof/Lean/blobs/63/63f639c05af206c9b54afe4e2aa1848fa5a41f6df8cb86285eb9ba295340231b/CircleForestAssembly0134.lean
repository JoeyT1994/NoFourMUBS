import CircleFullInterface
import CircleForestAssembly0133
import CircleForestChunk0525
import CircleForestChunk0527
import CircleForestChunk0528
import CircleForestChunk0529
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_287744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 17)))
theorem cover_287744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287744 := by
  apply coveredState_split_literal (state := state_287744) 1
    state_287745 state_287800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287745
  · exact cover_287800
#print axioms cover_287744

def state_287680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 17)))
theorem cover_287680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287680 := by
  apply coveredState_split_literal (state := state_287680) 2
    state_287681 state_287744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287681
  · exact cover_287744
#print axioms cover_287680

def state_287638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 8)))
theorem cover_287638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287638 := by
  apply coveredState_split_literal (state := state_287638) 4
    state_287639 state_287680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287639
  · exact cover_287680
#print axioms cover_287638

def state_287637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 8)))
theorem cover_287637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287637 := by
  apply coveredState_split_literal (state := state_287637) 3
    state_287638 state_288105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287638
  · exact cover_288105
#print axioms cover_287637

def state_287636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 8)))
theorem cover_287636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287636 := by
  apply coveredState_split_literal (state := state_287636) 0
    state_287637 state_288154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287637
  · exact cover_288154
#print axioms cover_287636

def state_287614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 8)))
theorem cover_287614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287614 := by
  apply coveredState_split_literal (state := state_287614) 2
    state_287615 state_287636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287615
  · exact cover_287636
#print axioms cover_287614

def state_288211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 46) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 17)))
theorem cover_288211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288211 := by
  apply coveredState_split_literal (state := state_288211) 3
    state_288212 state_288231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288212
  · exact cover_288231
#print axioms cover_288211

def state_288276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 17)))
theorem cover_288276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288276 := by
  apply coveredState_split_literal (state := state_288276) 3
    state_288277 state_288308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288277
  · exact cover_288308
#print axioms cover_288276

def state_288210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 46) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 17)))
theorem cover_288210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288210 := by
  apply coveredState_split_literal (state := state_288210) 0
    state_288211 state_288276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288211
  · exact cover_288276
#print axioms cover_288210

def state_288206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 46) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 17)))
theorem cover_288206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288206 := by
  apply coveredState_split_literal (state := state_288206) 2
    state_288207 state_288210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288207
  · exact cover_288210
#print axioms cover_288206

def state_288205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 17)))
theorem cover_288205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288205 := by
  apply coveredState_split_literal (state := state_288205) 1
    state_288206 state_288343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288206
  · exact cover_288343
#print axioms cover_288205

def state_288183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 8)))
theorem cover_288183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288183 := by
  apply coveredState_split_literal (state := state_288183) 4
    state_288184 state_288205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288184
  · exact cover_288205
#print axioms cover_288183

def state_288182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 8)))
theorem cover_288182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288182 := by
  apply coveredState_split_literal (state := state_288182) 3
    state_288183 state_288348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288183
  · exact cover_288348
#print axioms cover_288182

def state_288181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 8)))
theorem cover_288181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288181 := by
  apply coveredState_split_literal (state := state_288181) 0
    state_288182 state_288369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288182
  · exact cover_288369
#print axioms cover_288181

def state_288179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 8)))
theorem cover_288179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288179 := by
  apply coveredState_split_literal (state := state_288179) 2
    state_288180 state_288181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288180
  · exact cover_288181
#print axioms cover_288179

def state_287613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 8)))
theorem cover_287613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287613 := by
  apply coveredState_split_literal (state := state_287613) 1
    state_287614 state_288179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287614
  · exact cover_288179
#print axioms cover_287613

def state_288479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 95 else (if j.val < 4 then 57 else 36)))
theorem cover_288479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288479 := by
  apply coveredState_split_literal (state := state_288479) 1
    state_288480 state_288495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288480
  · exact cover_288495
#print axioms cover_288479

def state_288473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 36)))
theorem cover_288473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288473 := by
  apply coveredState_split_literal (state := state_288473) 2
    state_288474 state_288479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288474
  · exact cover_288479
#print axioms cover_288473

def state_288472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 18)))
theorem cover_288472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288472 := by
  apply coveredState_split_literal (state := state_288472) 4
    state_288473 state_288546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288473
  · exact cover_288546
#print axioms cover_288472

def state_288464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 18)))
theorem cover_288464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288464 := by
  apply coveredState_split_literal (state := state_288464) 3
    state_288465 state_288472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288465
  · exact cover_288472
#print axioms cover_288464

def state_288436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 18)))
theorem cover_288436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288436 := by
  apply coveredState_split_literal (state := state_288436) 0
    state_288437 state_288464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288437
  · exact cover_288464
#print axioms cover_288436

def state_288406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 18)))
theorem cover_288406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288406 := by
  apply coveredState_split_literal (state := state_288406) 1
    state_288407 state_288436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288407
  · exact cover_288436
#print axioms cover_288406

def state_288394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 18)))
theorem cover_288394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288394 := by
  apply coveredState_split_literal (state := state_288394) 2
    state_288395 state_288406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288395
  · exact cover_288406
#print axioms cover_288394

def state_288393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 9)))
theorem cover_288393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288393 := by
  apply coveredState_split_literal (state := state_288393) 4
    state_288394 state_288553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288394
  · exact cover_288553
#print axioms cover_288393

def state_288392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 9)))
theorem cover_288392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288392 := by
  apply coveredState_split_literal (state := state_288392) 3
    state_288393 state_288558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288393
  · exact cover_288558
#print axioms cover_288392

def state_288391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 9)))
theorem cover_288391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288391 := by
  apply coveredState_split_literal (state := state_288391) 0
    state_288392 state_288593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288392
  · exact cover_288593
#print axioms cover_288391

def state_288381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 9)))
theorem cover_288381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288381 := by
  apply coveredState_split_literal (state := state_288381) 2
    state_288382 state_288391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288382
  · exact cover_288391
#print axioms cover_288381

def state_288624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 9)))
theorem cover_288624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288624 := by
  apply coveredState_split_literal (state := state_288624) 0
    state_288625 state_288670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288625
  · exact cover_288670
#print axioms cover_288624

def state_288620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 9)))
theorem cover_288620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288620 := by
  apply coveredState_split_literal (state := state_288620) 2
    state_288621 state_288624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288621
  · exact cover_288624
#print axioms cover_288620

def state_288380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 9)))
theorem cover_288380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288380 := by
  apply coveredState_split_literal (state := state_288380) 1
    state_288381 state_288620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288381
  · exact cover_288620
#print axioms cover_288380

def state_287612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 4)))
theorem cover_287612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287612 := by
  apply coveredState_split_literal (state := state_287612) 4
    state_287613 state_288380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287613
  · exact cover_288380
#print axioms cover_287612

def state_287611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_287611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287611 := by
  apply coveredState_split_literal (state := state_287611) 3
    state_287612 state_288701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287612
  · exact cover_288701
#print axioms cover_287611
end Mub6.Numerical.CircleFullPrototype.Forest
