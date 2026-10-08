import CircleFullInterface
import CircleForestAssembly0307
import CircleForestChunk1185
import CircleForestChunk1186
import CircleForestChunk1187
import CircleForestChunk1188
import CircleForestChunk1189
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1584881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 52)))
theorem cover_1584881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584881 := by
  apply coveredState_split_literal (state := state_1584881) 4
    state_1584882 state_1584975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584882
  · exact cover_1584975
#print axioms cover_1584881

def state_1585005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 104)))
theorem cover_1585005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585005 := by
  apply coveredState_split_literal (state := state_1585005) 1
    state_1585006 state_1585051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585006
  · exact cover_1585051
#print axioms cover_1585005

def state_1584981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 104)))
theorem cover_1584981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584981 := by
  apply coveredState_split_literal (state := state_1584981) 0
    state_1584982 state_1585005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584982
  · exact cover_1585005
#print axioms cover_1584981

def state_1584980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 52)))
theorem cover_1584980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584980 := by
  apply coveredState_split_literal (state := state_1584980) 4
    state_1584981 state_1585076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584981
  · exact cover_1585076
#print axioms cover_1584980

def state_1584880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 52)))
theorem cover_1584880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584880 := by
  apply coveredState_split_literal (state := state_1584880) 3
    state_1584881 state_1584980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584881
  · exact cover_1584980
#print axioms cover_1584880

def state_1585081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 52)))
theorem cover_1585081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585081 := by
  apply coveredState_split_literal (state := state_1585081) 3
    state_1585082 state_1585131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585082
  · exact cover_1585131
#print axioms cover_1585081

def state_1584879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 52)))
theorem cover_1584879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584879 := by
  apply coveredState_split_literal (state := state_1584879) 2
    state_1584880 state_1585081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584880
  · exact cover_1585081
#print axioms cover_1584879

def state_1584709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 52)))
theorem cover_1584709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584709 := by
  apply coveredState_split_literal (state := state_1584709) 1
    state_1584710 state_1584879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584710
  · exact cover_1584879
#print axioms cover_1584709

def state_1585228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 52)))
theorem cover_1585228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585228 := by
  apply coveredState_split_literal (state := state_1585228) 2
    state_1585229 state_1585246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585229
  · exact cover_1585246
#print axioms cover_1585228

def state_1585178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 52)))
theorem cover_1585178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585178 := by
  apply coveredState_split_literal (state := state_1585178) 1
    state_1585179 state_1585228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585179
  · exact cover_1585228
#print axioms cover_1585178

def state_1584708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 52)))
theorem cover_1584708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584708 := by
  apply coveredState_split_literal (state := state_1584708) 0
    state_1584709 state_1585178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584709
  · exact cover_1585178
#print axioms cover_1584708

def state_1584707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 26)))
theorem cover_1584707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584707 := by
  apply coveredState_split_literal (state := state_1584707) 4
    state_1584708 state_1585301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584708
  · exact cover_1585301
#print axioms cover_1584707

def state_1585369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
theorem cover_1585369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585369 := by
  apply coveredState_split_literal (state := state_1585369) 2
    state_1585370 state_1585397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585370
  · exact cover_1585397
#print axioms cover_1585369

def state_1585351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
theorem cover_1585351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585351 := by
  apply coveredState_split_literal (state := state_1585351) 1
    state_1585352 state_1585369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585352
  · exact cover_1585369
#print axioms cover_1585351

def state_1585329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
theorem cover_1585329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585329 := by
  apply coveredState_split_literal (state := state_1585329) 0
    state_1585330 state_1585351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585330
  · exact cover_1585351
#print axioms cover_1585329

def state_1585328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 26)))
theorem cover_1585328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585328 := by
  apply coveredState_split_literal (state := state_1585328) 4
    state_1585329 state_1585448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585329
  · exact cover_1585448
#print axioms cover_1585328

def state_1584706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 26)))
theorem cover_1584706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584706 := by
  apply coveredState_split_literal (state := state_1584706) 3
    state_1584707 state_1585328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584707
  · exact cover_1585328
#print axioms cover_1584706

def state_1584705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
theorem cover_1584705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584705 := by
  apply coveredState_split_literal (state := state_1584705) 2
    state_1584706 state_1585457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584706
  · exact cover_1585457
#print axioms cover_1584705

def state_1585509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 52)))
theorem cover_1585509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585509 := by
  apply coveredState_split_literal (state := state_1585509) 0
    state_1585510 state_1585561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585510
  · exact cover_1585561
#print axioms cover_1585509

def state_1585508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 26)))
theorem cover_1585508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585508 := by
  apply coveredState_split_literal (state := state_1585508) 4
    state_1585509 state_1585590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585509
  · exact cover_1585590
#print axioms cover_1585508

def state_1585609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
theorem cover_1585609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585609 := by
  apply coveredState_split_literal (state := state_1585609) 1
    state_1585610 state_1585669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585610
  · exact cover_1585669
#print axioms cover_1585609

def state_1585697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 52)))
theorem cover_1585697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585697 := by
  apply coveredState_split_literal (state := state_1585697) 4
    state_1585698 state_1585759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585698
  · exact cover_1585759
#print axioms cover_1585697

def state_1585689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
theorem cover_1585689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585689 := by
  apply coveredState_split_literal (state := state_1585689) 2
    state_1585690 state_1585697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585690
  · exact cover_1585697
#print axioms cover_1585689

def state_1585688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
theorem cover_1585688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585688 := by
  apply coveredState_split_literal (state := state_1585688) 1
    state_1585689 state_1585770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585689
  · exact cover_1585770
#print axioms cover_1585688

def state_1585608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
theorem cover_1585608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585608 := by
  apply coveredState_split_literal (state := state_1585608) 0
    state_1585609 state_1585688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585609
  · exact cover_1585688
#print axioms cover_1585608

def state_1585607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 26)))
theorem cover_1585607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585607 := by
  apply coveredState_split_literal (state := state_1585607) 4
    state_1585608 state_1585789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585608
  · exact cover_1585789
#print axioms cover_1585607

def state_1585507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 26)))
theorem cover_1585507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585507 := by
  apply coveredState_split_literal (state := state_1585507) 3
    state_1585508 state_1585607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585508
  · exact cover_1585607
#print axioms cover_1585507

def state_1585881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 52)))
theorem cover_1585881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585881 := by
  apply coveredState_split_literal (state := state_1585881) 1
    state_1585882 state_1585929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585882
  · exact cover_1585929
#print axioms cover_1585881

def state_1585869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 52)))
theorem cover_1585869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585869 := by
  apply coveredState_split_literal (state := state_1585869) 0
    state_1585870 state_1585881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585870
  · exact cover_1585881
#print axioms cover_1585869

def state_1585868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 26)))
theorem cover_1585868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585868 := by
  apply coveredState_split_literal (state := state_1585868) 4
    state_1585869 state_1585972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585869
  · exact cover_1585972
#print axioms cover_1585868

def state_1585804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 26)))
theorem cover_1585804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585804 := by
  apply coveredState_split_literal (state := state_1585804) 3
    state_1585805 state_1585868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585805
  · exact cover_1585868
#print axioms cover_1585804

def state_1585506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
theorem cover_1585506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585506 := by
  apply coveredState_split_literal (state := state_1585506) 2
    state_1585507 state_1585804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1585507
  · exact cover_1585804
#print axioms cover_1585506
end Mub6.Numerical.CircleFullD0.Forest
