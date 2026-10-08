import CircleFullInterface
import CircleForestChunk1593
import CircleForestChunk1594
import CircleForestChunk1595
import CircleForestChunk1596
import CircleForestChunk1597
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2255791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 85 else (if j.val < 4 then 91 else 53)))
theorem cover_2255791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255791 := by
  apply coveredState_split_literal (state := state_2255791) 4
    state_2255792 state_2255827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255792
  · exact cover_2255827
#print axioms cover_2255791

def state_2255777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 42 else (if j.val < 4 then 91 else 53)))
theorem cover_2255777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255777 := by
  apply coveredState_split_literal (state := state_2255777) 2
    state_2255778 state_2255791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255778
  · exact cover_2255791
#print axioms cover_2255777

def state_2255776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 91 else 53)))
theorem cover_2255776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255776 := by
  apply coveredState_split_literal (state := state_2255776) 1
    state_2255777 state_2255884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255777
  · exact cover_2255884
#print axioms cover_2255776

def state_2255748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 53)))
theorem cover_2255748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255748 := by
  apply coveredState_split_literal (state := state_2255748) 3
    state_2255749 state_2255776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255749
  · exact cover_2255776
#print axioms cover_2255748

def state_2255732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 53)))
theorem cover_2255732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255732 := by
  apply coveredState_split_literal (state := state_2255732) 0
    state_2255733 state_2255748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255733
  · exact cover_2255748
#print axioms cover_2255732

def state_2255686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 26)))
theorem cover_2255686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255686 := by
  apply coveredState_split_literal (state := state_2255686) 4
    state_2255687 state_2255732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255687
  · exact cover_2255732
#print axioms cover_2255686

def state_2255989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 71 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 107)))
theorem cover_2255989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255989 := by
  apply coveredState_split_literal (state := state_2255989) 3
    state_2255990 state_2256017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255990
  · exact cover_2256017
#print axioms cover_2255989

def state_2255953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 107)))
theorem cover_2255953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255953 := by
  apply coveredState_split_literal (state := state_2255953) 0
    state_2255954 state_2255989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255954
  · exact cover_2255989
#print axioms cover_2255953

def state_2255951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 53)))
theorem cover_2255951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255951 := by
  apply coveredState_split_literal (state := state_2255951) 4
    state_2255952 state_2255953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255952
  · exact cover_2255953
#print axioms cover_2255951

def state_2255950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 53)))
theorem cover_2255950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255950 := by
  apply coveredState_split_literal (state := state_2255950) 2
    state_2255951 state_2256074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255951
  · exact cover_2256074
#print axioms cover_2255950

def state_2255949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 53)))
theorem cover_2255949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255949 := by
  apply coveredState_split_literal (state := state_2255949) 1
    state_2255950 state_2256075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255950
  · exact cover_2256075
#print axioms cover_2255949

def state_2255919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 53)))
theorem cover_2255919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255919 := by
  apply coveredState_split_literal (state := state_2255919) 3
    state_2255920 state_2255949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255920
  · exact cover_2255949
#print axioms cover_2255919

def state_2255897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 53)))
theorem cover_2255897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255897 := by
  apply coveredState_split_literal (state := state_2255897) 0
    state_2255898 state_2255919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255898
  · exact cover_2255919
#print axioms cover_2255897

def state_2255895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 26)))
theorem cover_2255895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255895 := by
  apply coveredState_split_literal (state := state_2255895) 4
    state_2255896 state_2255897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255896
  · exact cover_2255897
#print axioms cover_2255895

def state_2255685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
theorem cover_2255685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255685 := by
  apply coveredState_split_literal (state := state_2255685) 2
    state_2255686 state_2255895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255686
  · exact cover_2255895
#print axioms cover_2255685

def state_2255684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
theorem cover_2255684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255684 := by
  apply coveredState_split_literal (state := state_2255684) 1
    state_2255685 state_2256096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255685
  · exact cover_2256096
#print axioms cover_2255684

def state_2255642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2255642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255642 := by
  apply coveredState_split_literal (state := state_2255642) 3
    state_2255643 state_2255684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255643
  · exact cover_2255684
#print axioms cover_2255642

def state_2255622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2255622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255622 := by
  apply coveredState_split_literal (state := state_2255622) 0
    state_2255623 state_2255642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255623
  · exact cover_2255642
#print axioms cover_2255622

def state_2256231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
theorem cover_2256231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256231 := by
  apply coveredState_split_literal (state := state_2256231) 4
    state_2256232 state_2256259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256232
  · exact cover_2256259
#print axioms cover_2256231

def state_2256217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2256217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256217 := by
  apply coveredState_split_literal (state := state_2256217) 2
    state_2256218 state_2256231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256218
  · exact cover_2256231
#print axioms cover_2256217

def state_2256216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2256216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256216 := by
  apply coveredState_split_literal (state := state_2256216) 1
    state_2256217 state_2256312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256217
  · exact cover_2256312
#print axioms cover_2256216

def state_2256208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
theorem cover_2256208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256208 := by
  apply coveredState_split_literal (state := state_2256208) 3
    state_2256209 state_2256216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256209
  · exact cover_2256216
#print axioms cover_2256208

def state_2256318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
theorem cover_2256318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256318 := by
  apply coveredState_split_literal (state := state_2256318) 1
    state_2256319 state_2256364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256319
  · exact cover_2256364
#print axioms cover_2256318

def state_2256390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 108)))
theorem cover_2256390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256390 := by
  apply coveredState_split_literal (state := state_2256390) 0
    state_2256391 state_2256424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256391
  · exact cover_2256424
#print axioms cover_2256390

def state_2256389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 54)))
theorem cover_2256389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256389 := by
  apply coveredState_split_literal (state := state_2256389) 4
    state_2256390 state_2256481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256390
  · exact cover_2256481
#print axioms cover_2256389

def state_2256388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2256388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256388 := by
  apply coveredState_split_literal (state := state_2256388) 2
    state_2256389 state_2256508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256389
  · exact cover_2256508
#print axioms cover_2256388

def state_2256509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2256509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256509 := by
  apply coveredState_split_literal (state := state_2256509) 2
    state_2256510 state_2256535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256510
  · exact cover_2256535
#print axioms cover_2256509

def state_2256387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2256387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256387 := by
  apply coveredState_split_literal (state := state_2256387) 1
    state_2256388 state_2256509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256388
  · exact cover_2256509
#print axioms cover_2256387

def state_2256317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
theorem cover_2256317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256317 := by
  apply coveredState_split_literal (state := state_2256317) 3
    state_2256318 state_2256387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256318
  · exact cover_2256387
#print axioms cover_2256317

def state_2256207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
theorem cover_2256207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256207 := by
  apply coveredState_split_literal (state := state_2256207) 0
    state_2256208 state_2256317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256208
  · exact cover_2256317
#print axioms cover_2256207

def state_2256590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
theorem cover_2256590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256590 := by
  apply coveredState_split_literal (state := state_2256590) 0
    state_2256591 state_2256620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256591
  · exact cover_2256620
#print axioms cover_2256590

def state_2256206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2256206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256206 := by
  apply coveredState_split_literal (state := state_2256206) 4
    state_2256207 state_2256590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256207
  · exact cover_2256590
#print axioms cover_2256206
end Mub6.Numerical.CircleFullD0.Forest
