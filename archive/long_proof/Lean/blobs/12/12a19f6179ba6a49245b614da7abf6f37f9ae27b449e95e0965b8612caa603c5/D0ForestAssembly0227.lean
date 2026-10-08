import D0FullInterface
import D0ForestAssembly0219
import D0ForestAssembly0224
import D0ForestAssembly0225
import D0ForestAssembly0226
import D0ForestChunk0852
import D0ForestChunk0857
import D0ForestChunk0859
import D0ForestChunk0860
import D0ForestChunk0861
import D0ForestChunk0862
import D0ForestChunk0863
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1507014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1507014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507014 := by
  apply coveredState_split_literal (state := state_1507014) 0
    state_1507015 state_1507068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507015
  · exact cover_1507068
#print axioms cover_1507014

def state_1506634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 30)))
theorem cover_1506634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506634 := by
  apply coveredState_split_literal (state := state_1506634) 4
    state_1506635 state_1507014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506635
  · exact cover_1507014
#print axioms cover_1506634

def state_1506442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 30)))
theorem cover_1506442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506442 := by
  apply coveredState_split_literal (state := state_1506442) 3
    state_1506443 state_1506634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506443
  · exact cover_1506634
#print axioms cover_1506442

def state_1506441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1506441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506441 := by
  apply coveredState_split_literal (state := state_1506441) 2
    state_1506442 state_1507087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506442
  · exact cover_1507087
#print axioms cover_1506441

def state_1506393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1506393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506393 := by
  apply coveredState_split_literal (state := state_1506393) 1
    state_1506394 state_1506441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506394
  · exact cover_1506441
#print axioms cover_1506393

def state_1506392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1506392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506392 := by
  apply coveredState_split_literal (state := state_1506392) 0
    state_1506393 state_1507104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506393
  · exact cover_1507104
#print axioms cover_1506392

def state_1506391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 15)))
theorem cover_1506391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506391 := by
  apply coveredState_split_literal (state := state_1506391) 4
    state_1506392 state_1507159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506392
  · exact cover_1507159
#print axioms cover_1506391

def state_1507216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 30)))
theorem cover_1507216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507216 := by
  apply coveredState_split_literal (state := state_1507216) 4
    state_1507217 state_1507266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507217
  · exact cover_1507266
#print axioms cover_1507216

def state_1507215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 27 else 30)))
theorem cover_1507215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507215 := by
  apply coveredState_split_literal (state := state_1507215) 3
    state_1507216 state_1507283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507216
  · exact cover_1507283
#print axioms cover_1507215

def state_1507214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
theorem cover_1507214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507214 := by
  apply coveredState_split_literal (state := state_1507214) 2
    state_1507215 state_1507288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507215
  · exact cover_1507288
#print axioms cover_1507214

def state_1507184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
theorem cover_1507184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507184 := by
  apply coveredState_split_literal (state := state_1507184) 1
    state_1507185 state_1507214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507185
  · exact cover_1507214
#print axioms cover_1507184

def state_1507183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
theorem cover_1507183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507183 := by
  apply coveredState_split_literal (state := state_1507183) 0
    state_1507184 state_1507339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507184
  · exact cover_1507339
#print axioms cover_1507183

def state_1507182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 15)))
theorem cover_1507182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507182 := by
  apply coveredState_split_literal (state := state_1507182) 4
    state_1507183 state_1507372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507183
  · exact cover_1507372
#print axioms cover_1507182

def state_1506390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 15)))
theorem cover_1506390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506390 := by
  apply coveredState_split_literal (state := state_1506390) 3
    state_1506391 state_1507182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1506391
  · exact cover_1507182
#print axioms cover_1506390

def state_1505368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1505368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505368 := by
  apply coveredState_split_literal (state := state_1505368) 2
    state_1505369 state_1506390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505369
  · exact cover_1506390
#print axioms cover_1505368

def state_1505340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1505340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505340 := by
  apply coveredState_split_literal (state := state_1505340) 1
    state_1505341 state_1505368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505341
  · exact cover_1505368
#print axioms cover_1505340

def state_1504738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1504738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504738 := by
  apply coveredState_split_literal (state := state_1504738) 0
    state_1504739 state_1505340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504739
  · exact cover_1505340
#print axioms cover_1504738

def state_1499658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_1499658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499658 := by
  apply coveredState_split_literal (state := state_1499658) 4
    state_1499659 state_1504738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499659
  · exact cover_1504738
#print axioms cover_1499658

def state_1494040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
theorem cover_1494040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494040 := by
  apply coveredState_split_literal (state := state_1494040) 3
    state_1494041 state_1499658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494041
  · exact cover_1499658
#print axioms cover_1494040

def state_1507410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
theorem cover_1507410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507410 := by
  apply coveredState_split_literal (state := state_1507410) 0
    state_1507411 state_1507446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507411
  · exact cover_1507446
#print axioms cover_1507410

def state_1507409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 7)))
theorem cover_1507409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507409 := by
  apply coveredState_split_literal (state := state_1507409) 4
    state_1507410 state_1507481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507410
  · exact cover_1507481
#print axioms cover_1507409

def state_1507397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
theorem cover_1507397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507397 := by
  apply coveredState_split_literal (state := state_1507397) 3
    state_1507398 state_1507409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507398
  · exact cover_1507409
#print axioms cover_1507397

def state_1494039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1494039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494039 := by
  apply coveredState_split_literal (state := state_1494039) 2
    state_1494040 state_1507397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494040
  · exact cover_1507397
#print axioms cover_1494039

def state_1507552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 14)))
theorem cover_1507552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507552 := by
  apply coveredState_split_literal (state := state_1507552) 4
    state_1507553 state_1507554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507553
  · exact cover_1507554
#print axioms cover_1507552

def state_1507551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1507551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507551 := by
  apply coveredState_split_literal (state := state_1507551) 2
    state_1507552 state_1507617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507552
  · exact cover_1507617
#print axioms cover_1507551

def state_1507549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1507549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507549 := by
  apply coveredState_split_literal (state := state_1507549) 3
    state_1507550 state_1507551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507550
  · exact cover_1507551
#print axioms cover_1507549

def state_1507548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1507548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507548 := by
  apply coveredState_split_literal (state := state_1507548) 1
    state_1507549 state_1507618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507549
  · exact cover_1507618
#print axioms cover_1507548

def state_1507619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1507619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507619 := by
  apply coveredState_split_literal (state := state_1507619) 1
    state_1507620 state_1507683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507620
  · exact cover_1507683
#print axioms cover_1507619

def state_1507547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1507547 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507547 := by
  apply coveredState_split_literal (state := state_1507547) 0
    state_1507548 state_1507619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507548
  · exact cover_1507619
#print axioms cover_1507547

def state_1507754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 60)))
theorem cover_1507754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507754 := by
  apply coveredState_split_literal (state := state_1507754) 3
    state_1507755 state_1507768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507755
  · exact cover_1507768
#print axioms cover_1507754

def state_1507744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 60)))
theorem cover_1507744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507744 := by
  apply coveredState_split_literal (state := state_1507744) 0
    state_1507745 state_1507754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507745
  · exact cover_1507754
#print axioms cover_1507744

def state_1507743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 30)))
theorem cover_1507743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507743 := by
  apply coveredState_split_literal (state := state_1507743) 4
    state_1507744 state_1507827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507744
  · exact cover_1507827
#print axioms cover_1507743
end Mub6.Numerical.CircleFullD0.Forest
