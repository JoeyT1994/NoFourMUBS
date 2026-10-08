import CircleFullInterface
import CircleForestAssembly0075
import CircleForestChunk0300
import CircleForestChunk0301
import CircleForestChunk0303
import CircleForestChunk0304
import CircleForestChunk0305
import CircleForestChunk0306
import CircleForestChunk0307
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_148236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
theorem cover_148236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148236 := by
  apply coveredState_split_literal (state := state_148236) 1
    state_148237 state_148312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148237
  · exact cover_148312
#print axioms cover_148236

def state_148188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
theorem cover_148188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148188 := by
  apply coveredState_split_literal (state := state_148188) 0
    state_148189 state_148236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148189
  · exact cover_148236
#print axioms cover_148188

def state_148453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
theorem cover_148453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148453 := by
  apply coveredState_split_literal (state := state_148453) 0
    state_148454 state_148463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148454
  · exact cover_148463
#print axioms cover_148453

def state_148187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 27)))
theorem cover_148187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148187 := by
  apply coveredState_split_literal (state := state_148187) 2
    state_148188 state_148453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148188
  · exact cover_148453
#print axioms cover_148187

def state_148519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
theorem cover_148519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148519 := by
  apply coveredState_split_literal (state := state_148519) 0
    state_148520 state_148531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148520
  · exact cover_148531
#print axioms cover_148519

def state_148518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 27)))
theorem cover_148518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148518 := by
  apply coveredState_split_literal (state := state_148518) 2
    state_148519 state_148590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148519
  · exact cover_148590
#print axioms cover_148518

def state_148186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 27)))
theorem cover_148186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148186 := by
  apply coveredState_split_literal (state := state_148186) 1
    state_148187 state_148518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148187
  · exact cover_148518
#print axioms cover_148186

def state_147994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 13)))
theorem cover_147994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147994 := by
  apply coveredState_split_literal (state := state_147994) 4
    state_147995 state_148186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147995
  · exact cover_148186
#print axioms cover_147994

def state_147736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_147736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147736 := by
  apply coveredState_split_literal (state := state_147736) 3
    state_147737 state_147994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147737
  · exact cover_147994
#print axioms cover_147736

def state_147694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_147694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147694 := by
  apply coveredState_split_literal (state := state_147694) 0
    state_147695 state_147736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147695
  · exact cover_147736
#print axioms cover_147694

def state_147693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 13)))
theorem cover_147693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147693 := by
  apply coveredState_split_literal (state := state_147693) 2
    state_147694 state_148651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147694
  · exact cover_148651
#print axioms cover_147693

def state_147692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 13)))
theorem cover_147692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147692 := by
  apply coveredState_split_literal (state := state_147692) 1
    state_147693 state_148660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147693
  · exact cover_148660
#print axioms cover_147692

def state_147666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 6)))
theorem cover_147666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147666 := by
  apply coveredState_split_literal (state := state_147666) 4
    state_147667 state_147692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147667
  · exact cover_147692
#print axioms cover_147666

def state_147640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_147640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147640 := by
  apply coveredState_split_literal (state := state_147640) 3
    state_147641 state_147666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147641
  · exact cover_147666
#print axioms cover_147640

def state_147622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_147622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147622 := by
  apply coveredState_split_literal (state := state_147622) 0
    state_147623 state_147640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147623
  · exact cover_147640
#print axioms cover_147622

def state_148756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 14)))
theorem cover_148756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148756 := by
  apply coveredState_split_literal (state := state_148756) 3
    state_148757 state_148794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148757
  · exact cover_148794
#print axioms cover_148756

def state_148748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 14)))
theorem cover_148748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148748 := by
  apply coveredState_split_literal (state := state_148748) 0
    state_148749 state_148756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148749
  · exact cover_148756
#print axioms cover_148748

def state_148747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 7)))
theorem cover_148747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148747 := by
  apply coveredState_split_literal (state := state_148747) 4
    state_148748 state_148851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148748
  · exact cover_148851
#print axioms cover_148747

def state_148746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 7)))
theorem cover_148746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148746 := by
  apply coveredState_split_literal (state := state_148746) 2
    state_148747 state_148856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148747
  · exact cover_148856
#print axioms cover_148746

def state_148745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 7)))
theorem cover_148745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148745 := by
  apply coveredState_split_literal (state := state_148745) 1
    state_148746 state_148879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148746
  · exact cover_148879
#print axioms cover_148745

def state_148685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_148685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148685 := by
  apply coveredState_split_literal (state := state_148685) 3
    state_148686 state_148745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148686
  · exact cover_148745
#print axioms cover_148685

def state_148671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_148671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148671 := by
  apply coveredState_split_literal (state := state_148671) 0
    state_148672 state_148685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148672
  · exact cover_148685
#print axioms cover_148671

def state_147621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_147621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147621 := by
  apply coveredState_split_literal (state := state_147621) 4
    state_147622 state_148671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147622
  · exact cover_148671
#print axioms cover_147621

def state_149008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 13)))
theorem cover_149008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149008 := by
  apply coveredState_split_literal (state := state_149008) 4
    state_149009 state_149050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149009
  · exact cover_149050
#print axioms cover_149008

def state_148998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 13)))
theorem cover_148998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148998 := by
  apply coveredState_split_literal (state := state_148998) 0
    state_148999 state_149008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148999
  · exact cover_149008
#print axioms cover_148998

def state_148997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 13)))
theorem cover_148997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148997 := by
  apply coveredState_split_literal (state := state_148997) 3
    state_148998 state_149107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148998
  · exact cover_149107
#print axioms cover_148997

def state_148996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
theorem cover_148996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148996 := by
  apply coveredState_split_literal (state := state_148996) 2
    state_148997 state_149112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148997
  · exact cover_149112
#print axioms cover_148996

def state_148995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
theorem cover_148995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148995 := by
  apply coveredState_split_literal (state := state_148995) 1
    state_148996 state_149141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148996
  · exact cover_149141
#print axioms cover_148995

def state_148935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_148935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148935 := by
  apply coveredState_split_literal (state := state_148935) 4
    state_148936 state_148995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148936
  · exact cover_148995
#print axioms cover_148935

def state_148925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_148925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148925 := by
  apply coveredState_split_literal (state := state_148925) 0
    state_148926 state_148935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148926
  · exact cover_148935
#print axioms cover_148925

def state_148924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_148924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148924 := by
  apply coveredState_split_literal (state := state_148924) 4
    state_148925 state_149180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148925
  · exact cover_149180
#print axioms cover_148924

def state_147620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_147620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147620 := by
  apply coveredState_split_literal (state := state_147620) 3
    state_147621 state_148924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147621
  · exact cover_148924
#print axioms cover_147620
end Mub6.Numerical.CircleFullPrototype.Forest
