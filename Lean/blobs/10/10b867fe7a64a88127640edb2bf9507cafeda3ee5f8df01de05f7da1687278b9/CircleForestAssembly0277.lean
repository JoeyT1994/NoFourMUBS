import CircleFullInterface
import CircleForestAssembly0276
import CircleForestChunk1057
import CircleForestChunk1060
import CircleForestChunk1061
import CircleForestChunk1062
import CircleForestChunk1063
import CircleForestChunk1064
import CircleForestChunk1065
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1555091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 86)))
theorem cover_1555091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555091 := by
  apply coveredState_split_literal (state := state_1555091) 1
    state_1555092 state_1555103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555092
  · exact cover_1555103
#print axioms cover_1555091

def state_1555090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 43)))
theorem cover_1555090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555090 := by
  apply coveredState_split_literal (state := state_1555090) 4
    state_1555091 state_1555226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555091
  · exact cover_1555226
#print axioms cover_1555090

def state_1554794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
theorem cover_1554794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554794 := by
  apply coveredState_split_literal (state := state_1554794) 2
    state_1554795 state_1555090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554795
  · exact cover_1555090
#print axioms cover_1554794

def state_1554793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
theorem cover_1554793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554793 := by
  apply coveredState_split_literal (state := state_1554793) 0
    state_1554794 state_1555251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554794
  · exact cover_1555251
#print axioms cover_1554793

def state_1554743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 43)))
theorem cover_1554743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554743 := by
  apply coveredState_split_literal (state := state_1554743) 3
    state_1554744 state_1554793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554744
  · exact cover_1554793
#print axioms cover_1554743

def state_1554729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 43)))
theorem cover_1554729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554729 := by
  apply coveredState_split_literal (state := state_1554729) 1
    state_1554730 state_1554743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554730
  · exact cover_1554743
#print axioms cover_1554729

def state_1554043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 21)))
theorem cover_1554043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554043 := by
  apply coveredState_split_literal (state := state_1554043) 4
    state_1554044 state_1554729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554044
  · exact cover_1554729
#print axioms cover_1554043

def state_1555314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 42)))
theorem cover_1555314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555314 := by
  apply coveredState_split_literal (state := state_1555314) 2
    state_1555315 state_1555378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555315
  · exact cover_1555378
#print axioms cover_1555314

def state_1555313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 42)))
theorem cover_1555313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555313 := by
  apply coveredState_split_literal (state := state_1555313) 0
    state_1555314 state_1555389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555314
  · exact cover_1555389
#print axioms cover_1555313

def state_1555307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 42)))
theorem cover_1555307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555307 := by
  apply coveredState_split_literal (state := state_1555307) 3
    state_1555308 state_1555313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555308
  · exact cover_1555313
#print axioms cover_1555307

def state_1555297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 42)))
theorem cover_1555297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555297 := by
  apply coveredState_split_literal (state := state_1555297) 1
    state_1555298 state_1555307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555298
  · exact cover_1555307
#print axioms cover_1555297

def state_1555296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 21)))
theorem cover_1555296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555296 := by
  apply coveredState_split_literal (state := state_1555296) 4
    state_1555297 state_1555396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555297
  · exact cover_1555396
#print axioms cover_1555296

def state_1554042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1554042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554042 := by
  apply coveredState_split_literal (state := state_1554042) 2
    state_1554043 state_1555296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554043
  · exact cover_1555296
#print axioms cover_1554042

def state_1554041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1554041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554041 := by
  apply coveredState_split_literal (state := state_1554041) 0
    state_1554042 state_1555429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554042
  · exact cover_1555429
#print axioms cover_1554041

def state_1554033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1554033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554033 := by
  apply coveredState_split_literal (state := state_1554033) 1
    state_1554034 state_1554041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554034
  · exact cover_1554041
#print axioms cover_1554033

def state_1553587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 10)))
theorem cover_1553587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553587 := by
  apply coveredState_split_literal (state := state_1553587) 4
    state_1553588 state_1554033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553588
  · exact cover_1554033
#print axioms cover_1553587

def state_1555501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 20)))
theorem cover_1555501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555501 := by
  apply coveredState_split_literal (state := state_1555501) 0
    state_1555502 state_1555561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555502
  · exact cover_1555561
#print axioms cover_1555501

def state_1555469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 20)))
theorem cover_1555469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555469 := by
  apply coveredState_split_literal (state := state_1555469) 1
    state_1555470 state_1555501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555470
  · exact cover_1555501
#print axioms cover_1555469

def state_1555605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 21)))
theorem cover_1555605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555605 := by
  apply coveredState_split_literal (state := state_1555605) 4
    state_1555606 state_1555641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555606
  · exact cover_1555641
#print axioms cover_1555605

def state_1555604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 21 else 21)))
theorem cover_1555604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555604 := by
  apply coveredState_split_literal (state := state_1555604) 3
    state_1555605 state_1555682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555605
  · exact cover_1555682
#print axioms cover_1555604

def state_1555752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
theorem cover_1555752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555752 := by
  apply coveredState_split_literal (state := state_1555752) 0
    state_1555753 state_1555802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555753
  · exact cover_1555802
#print axioms cover_1555752

def state_1555746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
theorem cover_1555746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555746 := by
  apply coveredState_split_literal (state := state_1555746) 1
    state_1555747 state_1555752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555747
  · exact cover_1555752
#print axioms cover_1555746

def state_1555686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 21)))
theorem cover_1555686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555686 := by
  apply coveredState_split_literal (state := state_1555686) 4
    state_1555687 state_1555746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555687
  · exact cover_1555746
#print axioms cover_1555686

def state_1555685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 21 else 21)))
theorem cover_1555685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555685 := by
  apply coveredState_split_literal (state := state_1555685) 3
    state_1555686 state_1555817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555686
  · exact cover_1555817
#print axioms cover_1555685

def state_1555603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1555603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555603 := by
  apply coveredState_split_literal (state := state_1555603) 2
    state_1555604 state_1555685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555604
  · exact cover_1555685
#print axioms cover_1555603

def state_1555602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1555602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555602 := by
  apply coveredState_split_literal (state := state_1555602) 0
    state_1555603 state_1555826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555603
  · exact cover_1555826
#print axioms cover_1555602

def state_1555584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
theorem cover_1555584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555584 := by
  apply coveredState_split_literal (state := state_1555584) 1
    state_1555585 state_1555602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555585
  · exact cover_1555602
#print axioms cover_1555584

def state_1555468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 10)))
theorem cover_1555468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555468 := by
  apply coveredState_split_literal (state := state_1555468) 4
    state_1555469 state_1555584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555469
  · exact cover_1555584
#print axioms cover_1555468

def state_1553586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 10)))
theorem cover_1553586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553586 := by
  apply coveredState_split_literal (state := state_1553586) 3
    state_1553587 state_1555468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553587
  · exact cover_1555468
#print axioms cover_1553586

def state_1555918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 20)))
theorem cover_1555918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555918 := by
  apply coveredState_split_literal (state := state_1555918) 1
    state_1555919 state_1555944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555919
  · exact cover_1555944
#print axioms cover_1555918

def state_1556005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
theorem cover_1556005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556005 := by
  apply coveredState_split_literal (state := state_1556005) 0
    state_1556006 state_1556069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556006
  · exact cover_1556069
#print axioms cover_1556005

def state_1555993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
theorem cover_1555993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555993 := by
  apply coveredState_split_literal (state := state_1555993) 1
    state_1555994 state_1556005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1555994
  · exact cover_1556005
#print axioms cover_1555993
end Mub6.Numerical.CircleFullD0.Forest
