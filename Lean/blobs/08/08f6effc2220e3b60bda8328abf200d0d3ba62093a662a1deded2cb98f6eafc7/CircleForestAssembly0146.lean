import CircleFullInterface
import CircleForestAssembly0144
import CircleForestAssembly0145
import CircleForestChunk0566
import CircleForestChunk0567
import CircleForestChunk0570
import CircleForestChunk0572
import CircleForestChunk0573
import CircleForestChunk0574
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_375911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_375911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375911 := by
  apply coveredState_split_literal (state := state_375911) 0
    state_375912 state_375923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375912
  · exact cover_375923
#print axioms cover_375911

def state_375910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 12)))
theorem cover_375910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375910 := by
  apply coveredState_split_literal (state := state_375910) 4
    state_375911 state_376242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375911
  · exact cover_376242
#print axioms cover_375910

def state_375638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_375638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375638 := by
  apply coveredState_split_literal (state := state_375638) 3
    state_375639 state_375910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375639
  · exact cover_375910
#print axioms cover_375638

def state_375024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_375024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375024 := by
  apply coveredState_split_literal (state := state_375024) 1
    state_375025 state_375638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375025
  · exact cover_375638
#print axioms cover_375024

def state_374990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_374990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374990 := by
  apply coveredState_split_literal (state := state_374990) 2
    state_374991 state_375024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374991
  · exact cover_375024
#print axioms cover_374990

def state_374946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_374946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374946 := by
  apply coveredState_split_literal (state := state_374946) 0
    state_374947 state_374990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374947
  · exact cover_374990
#print axioms cover_374946

def state_374945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_374945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374945 := by
  apply coveredState_split_literal (state := state_374945) 4
    state_374946 state_376257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374946
  · exact cover_376257
#print axioms cover_374945

def state_374863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_374863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374863 := by
  apply coveredState_split_literal (state := state_374863) 3
    state_374864 state_374945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374864
  · exact cover_374945
#print axioms cover_374863

def state_374781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_374781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374781 := by
  apply coveredState_split_literal (state := state_374781) 1
    state_374782 state_374863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374782
  · exact cover_374863
#print axioms cover_374781

def state_374780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_374780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374780 := by
  apply coveredState_split_literal (state := state_374780) 4
    state_374781 state_376288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374781
  · exact cover_376288
#print axioms cover_374780

def state_374760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_374760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374760 := by
  apply coveredState_split_literal (state := state_374760) 3
    state_374761 state_374780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374761
  · exact cover_374780
#print axioms cover_374760

def state_376473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
theorem cover_376473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376473 := by
  apply coveredState_split_literal (state := state_376473) 3
    state_376474 state_376519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376474
  · exact cover_376519
#print axioms cover_376473

def state_376472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
theorem cover_376472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376472 := by
  apply coveredState_split_literal (state := state_376472) 1
    state_376473 state_376538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376473
  · exact cover_376538
#print axioms cover_376472

def state_376470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
theorem cover_376470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376470 := by
  apply coveredState_split_literal (state := state_376470) 0
    state_376471 state_376472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376471
  · exact cover_376472
#print axioms cover_376470

def state_376469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 24)))
theorem cover_376469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376469 := by
  apply coveredState_split_literal (state := state_376469) 2
    state_376470 state_376541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376470
  · exact cover_376541
#print axioms cover_376469

def state_376468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 12)))
theorem cover_376468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376468 := by
  apply coveredState_split_literal (state := state_376468) 4
    state_376469 state_376546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376469
  · exact cover_376546
#print axioms cover_376468

def state_376444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_376444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376444 := by
  apply coveredState_split_literal (state := state_376444) 3
    state_376445 state_376468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376445
  · exact cover_376468
#print axioms cover_376444

def state_376396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_376396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376396 := by
  apply coveredState_split_literal (state := state_376396) 1
    state_376397 state_376444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376397
  · exact cover_376444
#print axioms cover_376396

def state_376392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_376392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376392 := by
  apply coveredState_split_literal (state := state_376392) 0
    state_376393 state_376396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376393
  · exact cover_376396
#print axioms cover_376392

def state_376391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 6)))
theorem cover_376391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376391 := by
  apply coveredState_split_literal (state := state_376391) 4
    state_376392 state_376547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376392
  · exact cover_376547
#print axioms cover_376391

def state_376361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
theorem cover_376361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376361 := by
  apply coveredState_split_literal (state := state_376361) 3
    state_376362 state_376391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376362
  · exact cover_376391
#print axioms cover_376361

def state_376360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_376360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376360 := by
  apply coveredState_split_literal (state := state_376360) 2
    state_376361 state_376548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376361
  · exact cover_376548
#print axioms cover_376360

def state_376348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_376348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376348 := by
  apply coveredState_split_literal (state := state_376348) 1
    state_376349 state_376360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376349
  · exact cover_376360
#print axioms cover_376348

def state_376347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_376347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376347 := by
  apply coveredState_split_literal (state := state_376347) 4
    state_376348 state_376553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376348
  · exact cover_376553
#print axioms cover_376347

def state_376297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_376297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376297 := by
  apply coveredState_split_literal (state := state_376297) 3
    state_376298 state_376347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376298
  · exact cover_376347
#print axioms cover_376297

def state_374759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_374759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374759 := by
  apply coveredState_split_literal (state := state_374759) 2
    state_374760 state_376297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374760
  · exact cover_376297
#print axioms cover_374759

def state_374715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_374715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374715 := by
  apply coveredState_split_literal (state := state_374715) 1
    state_374716 state_374759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374716
  · exact cover_374759
#print axioms cover_374715

def state_376567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_376567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376567 := by
  apply coveredState_split_literal (state := state_376567) 2
    state_376568 state_376621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376568
  · exact cover_376621
#print axioms cover_376567

def state_376776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_376776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376776 := by
  apply coveredState_split_literal (state := state_376776) 1
    state_376777 state_376828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376777
  · exact cover_376828
#print axioms cover_376776

def state_376774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_376774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376774 := by
  apply coveredState_split_literal (state := state_376774) 2
    state_376775 state_376776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376775
  · exact cover_376776
#print axioms cover_376774

def state_376773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_376773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376773 := by
  apply coveredState_split_literal (state := state_376773) 0
    state_376774 state_376849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376774
  · exact cover_376849
#print axioms cover_376773

def state_376772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 12)))
theorem cover_376772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376772 := by
  apply coveredState_split_literal (state := state_376772) 4
    state_376773 state_376856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376773
  · exact cover_376856
#print axioms cover_376772
end Mub6.Numerical.CircleFullPrototype.Forest
