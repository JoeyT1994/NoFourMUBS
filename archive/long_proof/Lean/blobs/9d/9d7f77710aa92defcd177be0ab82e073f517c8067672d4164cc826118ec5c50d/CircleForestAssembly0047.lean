import CircleFullInterface
import CircleForestAssembly0046
import CircleForestChunk0187
import CircleForestChunk0188
import CircleForestChunk0189
import CircleForestChunk0190
import CircleForestChunk0191
import CircleForestChunk0192
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_982434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 21)))
theorem cover_982434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982434 := by
  apply coveredState_split_literal (state := state_982434) 0
    state_982435 state_982456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982435
  · exact cover_982456
#print axioms cover_982434

def state_982410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 24 else 21)))
theorem cover_982410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982410 := by
  apply coveredState_split_literal (state := state_982410) 3
    state_982411 state_982434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982411
  · exact cover_982434
#print axioms cover_982410

def state_982409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 21)))
theorem cover_982409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982409 := by
  apply coveredState_split_literal (state := state_982409) 2
    state_982410 state_982529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982410
  · exact cover_982529
#print axioms cover_982409

def state_982035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 10)))
theorem cover_982035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982035 := by
  apply coveredState_split_literal (state := state_982035) 4
    state_982036 state_982409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982036
  · exact cover_982409
#print axioms cover_982035

def state_982566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 10)))
theorem cover_982566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982566 := by
  apply coveredState_split_literal (state := state_982566) 4
    state_982567 state_982578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982567
  · exact cover_982578
#print axioms cover_982566

def state_982034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 10)))
theorem cover_982034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982034 := by
  apply coveredState_split_literal (state := state_982034) 1
    state_982035 state_982566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982035
  · exact cover_982566
#print axioms cover_982034

def state_982639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 20)))
theorem cover_982639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982639 := by
  apply coveredState_split_literal (state := state_982639) 4
    state_982640 state_982667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982640
  · exact cover_982667
#print axioms cover_982639

def state_982638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 20)))
theorem cover_982638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982638 := by
  apply coveredState_split_literal (state := state_982638) 1
    state_982639 state_982730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982639
  · exact cover_982730
#print axioms cover_982638

def state_982637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 20)))
theorem cover_982637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982637 := by
  apply coveredState_split_literal (state := state_982637) 3
    state_982638 state_982739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982638
  · exact cover_982739
#print axioms cover_982637

def state_982756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 40)))
theorem cover_982756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982756 := by
  apply coveredState_split_literal (state := state_982756) 0
    state_982757 state_982818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982757
  · exact cover_982818
#print axioms cover_982756

def state_982831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 40)))
theorem cover_982831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982831 := by
  apply coveredState_split_literal (state := state_982831) 0
    state_982832 state_982891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982832
  · exact cover_982891
#print axioms cover_982831

def state_982755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 40)))
theorem cover_982755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982755 := by
  apply coveredState_split_literal (state := state_982755) 2
    state_982756 state_982831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982756
  · exact cover_982831
#print axioms cover_982755

def state_982903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 41)))
theorem cover_982903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982903 := by
  apply coveredState_split_literal (state := state_982903) 0
    state_982904 state_982963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982904
  · exact cover_982963
#print axioms cover_982903

def state_982984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 100 else 41)))
theorem cover_982984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982984 := by
  apply coveredState_split_literal (state := state_982984) 1
    state_982985 state_983004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982985
  · exact cover_983004
#print axioms cover_982984

def state_983073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 105) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 41)))
theorem cover_983073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983073 := by
  apply coveredState_split_literal (state := state_983073) 4
    state_983074 state_983111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983074
  · exact cover_983111
#print axioms cover_983073

def state_983065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 41)))
theorem cover_983065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983065 := by
  apply coveredState_split_literal (state := state_983065) 1
    state_983066 state_983073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983066
  · exact cover_983073
#print axioms cover_983065

def state_982983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 41)))
theorem cover_982983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982983 := by
  apply coveredState_split_literal (state := state_982983) 3
    state_982984 state_983065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982984
  · exact cover_983065
#print axioms cover_982983

def state_982982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 41)))
theorem cover_982982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982982 := by
  apply coveredState_split_literal (state := state_982982) 0
    state_982983 state_983154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982983
  · exact cover_983154
#print axioms cover_982982

def state_982902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 41)))
theorem cover_982902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982902 := by
  apply coveredState_split_literal (state := state_982902) 2
    state_982903 state_982982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982903
  · exact cover_982982
#print axioms cover_982902

def state_982754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 20)))
theorem cover_982754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982754 := by
  apply coveredState_split_literal (state := state_982754) 4
    state_982755 state_982902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982755
  · exact cover_982902
#print axioms cover_982754

def state_983249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 41)))
theorem cover_983249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983249 := by
  apply coveredState_split_literal (state := state_983249) 0
    state_983250 state_983307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983250
  · exact cover_983307
#print axioms cover_983249

def state_983213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 41)))
theorem cover_983213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983213 := by
  apply coveredState_split_literal (state := state_983213) 2
    state_983214 state_983249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983214
  · exact cover_983249
#print axioms cover_983213

def state_983205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 20)))
theorem cover_983205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983205 := by
  apply coveredState_split_literal (state := state_983205) 4
    state_983206 state_983213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983206
  · exact cover_983213
#print axioms cover_983205

def state_982753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 20)))
theorem cover_982753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982753 := by
  apply coveredState_split_literal (state := state_982753) 1
    state_982754 state_983205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982754
  · exact cover_983205
#print axioms cover_982753

def state_983393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 51 else 41)))
theorem cover_983393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983393 := by
  apply coveredState_split_literal (state := state_983393) 0
    state_983394 state_983429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983394
  · exact cover_983429
#print axioms cover_983393

def state_983385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 41)))
theorem cover_983385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983385 := by
  apply coveredState_split_literal (state := state_983385) 2
    state_983386 state_983393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983386
  · exact cover_983393
#print axioms cover_983385

def state_983355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 20)))
theorem cover_983355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983355 := by
  apply coveredState_split_literal (state := state_983355) 4
    state_983356 state_983385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983356
  · exact cover_983385
#print axioms cover_983355

def state_983354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 20)))
theorem cover_983354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983354 := by
  apply coveredState_split_literal (state := state_983354) 1
    state_983355 state_983470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983355
  · exact cover_983470
#print axioms cover_983354

def state_982752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 20)))
theorem cover_982752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982752 := by
  apply coveredState_split_literal (state := state_982752) 3
    state_982753 state_983354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982753
  · exact cover_983354
#print axioms cover_982752

def state_982636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 20)))
theorem cover_982636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982636 := by
  apply coveredState_split_literal (state := state_982636) 0
    state_982637 state_982752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982637
  · exact cover_982752
#print axioms cover_982636

def state_983573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 20)))
theorem cover_983573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983573 := by
  apply coveredState_split_literal (state := state_983573) 4
    state_983574 state_983589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983574
  · exact cover_983589
#print axioms cover_983573

def state_983572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 20)))
theorem cover_983572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983572 := by
  apply coveredState_split_literal (state := state_983572) 1
    state_983573 state_983642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_983573
  · exact cover_983642
#print axioms cover_983572
end Mub6.Numerical.CircleFullD0.Forest
