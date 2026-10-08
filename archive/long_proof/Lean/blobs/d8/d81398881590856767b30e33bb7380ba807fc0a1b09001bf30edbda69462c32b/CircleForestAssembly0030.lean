import CircleFullInterface
import CircleForestAssembly0029
import CircleForestChunk0117
import CircleForestChunk0118
import CircleForestChunk0119
import CircleForestChunk0120
import CircleForestChunk0121
import CircleForestChunk0122
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_49546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 26)))
theorem cover_49546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49546 := by
  apply coveredState_split_literal (state := state_49546) 3
    state_49547 state_49556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49547
  · exact cover_49556
#print axioms cover_49546

def state_49528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 26)))
theorem cover_49528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49528 := by
  apply coveredState_split_literal (state := state_49528) 2
    state_49529 state_49546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49529
  · exact cover_49546
#print axioms cover_49528

def state_49506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 26)))
theorem cover_49506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49506 := by
  apply coveredState_split_literal (state := state_49506) 1
    state_49507 state_49528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49507
  · exact cover_49528
#print axioms cover_49506

def state_49298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 26)))
theorem cover_49298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49298 := by
  apply coveredState_split_literal (state := state_49298) 0
    state_49299 state_49506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49299
  · exact cover_49506
#print axioms cover_49298

def state_49765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
theorem cover_49765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49765 := by
  apply coveredState_split_literal (state := state_49765) 0
    state_49766 state_49773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49766
  · exact cover_49773
#print axioms cover_49765

def state_49764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
theorem cover_49764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49764 := by
  apply coveredState_split_literal (state := state_49764) 1
    state_49765 state_49832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49765
  · exact cover_49832
#print axioms cover_49764

def state_49762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 27)))
theorem cover_49762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49762 := by
  apply coveredState_split_literal (state := state_49762) 3
    state_49763 state_49764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49763
  · exact cover_49764
#print axioms cover_49762

def state_49722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 27)))
theorem cover_49722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49722 := by
  apply coveredState_split_literal (state := state_49722) 2
    state_49723 state_49762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49723
  · exact cover_49762
#print axioms cover_49722

def state_49666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 27)))
theorem cover_49666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49666 := by
  apply coveredState_split_literal (state := state_49666) 1
    state_49667 state_49722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49667
  · exact cover_49722
#print axioms cover_49666

def state_49870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 27)))
theorem cover_49870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49870 := by
  apply coveredState_split_literal (state := state_49870) 2
    state_49871 state_49890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49871
  · exact cover_49890
#print axioms cover_49870

def state_50097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 34 else (if j.val < 4 then 95 else 54)))
theorem cover_50097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50097 := by
  apply coveredState_split_literal (state := state_50097) 0
    state_50098 state_50145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50098
  · exact cover_50145
#print axioms cover_50097

def state_50047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 34 else (if j.val < 4 then 47 else 54)))
theorem cover_50047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50047 := by
  apply coveredState_split_literal (state := state_50047) 3
    state_50048 state_50097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50048
  · exact cover_50097
#print axioms cover_50047

def state_50046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 54)))
theorem cover_50046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50046 := by
  apply coveredState_split_literal (state := state_50046) 2
    state_50047 state_50206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50047
  · exact cover_50206
#print axioms cover_50046

def state_50045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
theorem cover_50045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50045 := by
  apply coveredState_split_literal (state := state_50045) 4
    state_50046 state_50259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50046
  · exact cover_50259
#print axioms cover_50045

def state_50286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
theorem cover_50286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50286 := by
  apply coveredState_split_literal (state := state_50286) 4
    state_50287 state_50338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50287
  · exact cover_50338
#print axioms cover_50286

def state_50044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
theorem cover_50044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50044 := by
  apply coveredState_split_literal (state := state_50044) 1
    state_50045 state_50286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50045
  · exact cover_50286
#print axioms cover_50044

def state_50353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
theorem cover_50353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50353 := by
  apply coveredState_split_literal (state := state_50353) 1
    state_50354 state_50401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50354
  · exact cover_50401
#print axioms cover_50353

def state_50043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
theorem cover_50043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50043 := by
  apply coveredState_split_literal (state := state_50043) 0
    state_50044 state_50353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50044
  · exact cover_50353
#print axioms cover_50043

def state_50011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 27)))
theorem cover_50011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50011 := by
  apply coveredState_split_literal (state := state_50011) 3
    state_50012 state_50043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50012
  · exact cover_50043
#print axioms cover_50011

def state_49953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 27)))
theorem cover_49953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49953 := by
  apply coveredState_split_literal (state := state_49953) 2
    state_49954 state_50011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49954
  · exact cover_50011
#print axioms cover_49953

def state_49869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 27)))
theorem cover_49869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49869 := by
  apply coveredState_split_literal (state := state_49869) 1
    state_49870 state_49953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49870
  · exact cover_49953
#print axioms cover_49869

def state_49665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 27)))
theorem cover_49665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49665 := by
  apply coveredState_split_literal (state := state_49665) 0
    state_49666 state_49869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49666
  · exact cover_49869
#print axioms cover_49665

def state_49297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 13)))
theorem cover_49297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49297 := by
  apply coveredState_split_literal (state := state_49297) 4
    state_49298 state_49665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49298
  · exact cover_49665
#print axioms cover_49297

def state_49261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
theorem cover_49261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49261 := by
  apply coveredState_split_literal (state := state_49261) 3
    state_49262 state_49297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49262
  · exact cover_49297
#print axioms cover_49261

def state_50429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 26)))
theorem cover_50429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50429 := by
  apply coveredState_split_literal (state := state_50429) 0
    state_50430 state_50475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50430
  · exact cover_50475
#print axioms cover_50429

def state_50556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 27)))
theorem cover_50556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50556 := by
  apply coveredState_split_literal (state := state_50556) 1
    state_50557 state_50614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50557
  · exact cover_50614
#print axioms cover_50556

def state_50555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 27)))
theorem cover_50555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50555 := by
  apply coveredState_split_literal (state := state_50555) 0
    state_50556 state_50623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50556
  · exact cover_50623
#print axioms cover_50555

def state_50553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 27)))
theorem cover_50553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50553 := by
  apply coveredState_split_literal (state := state_50553) 3
    state_50554 state_50555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50554
  · exact cover_50555
#print axioms cover_50553

def state_50552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 27)))
theorem cover_50552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50552 := by
  apply coveredState_split_literal (state := state_50552) 2
    state_50553 state_50652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50553
  · exact cover_50652
#print axioms cover_50552

def state_50514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 27)))
theorem cover_50514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50514 := by
  apply coveredState_split_literal (state := state_50514) 1
    state_50515 state_50552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50515
  · exact cover_50552
#print axioms cover_50514

def state_50512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 27)))
theorem cover_50512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50512 := by
  apply coveredState_split_literal (state := state_50512) 0
    state_50513 state_50514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50513
  · exact cover_50514
#print axioms cover_50512

def state_50428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 13)))
theorem cover_50428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50428 := by
  apply coveredState_split_literal (state := state_50428) 4
    state_50429 state_50512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50429
  · exact cover_50512
#print axioms cover_50428
end Mub6.Numerical.CircleFullPrototype.Forest
