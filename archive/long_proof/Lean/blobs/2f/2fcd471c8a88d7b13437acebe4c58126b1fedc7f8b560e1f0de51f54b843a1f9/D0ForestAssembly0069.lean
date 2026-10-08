import D0FullInterface
import D0ForestAssembly0068
import D0ForestChunk0277
import D0ForestChunk0278
import D0ForestChunk0279
import D0ForestChunk0280
import D0ForestChunk0281
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1003925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
theorem cover_1003925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003925 := by
  apply coveredState_split_literal (state := state_1003925) 4
    state_1003926 state_1003977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003926
  · exact cover_1003977
#print axioms cover_1003925

def state_1003924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
theorem cover_1003924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003924 := by
  apply coveredState_split_literal (state := state_1003924) 0
    state_1003925 state_1003990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003925
  · exact cover_1003990
#print axioms cover_1003924

def state_1004063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 176)))
theorem cover_1004063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004063 := by
  apply coveredState_split_literal (state := state_1004063) 3
    state_1004064 state_1004115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004064
  · exact cover_1004115
#print axioms cover_1004063

def state_1004062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 88)))
theorem cover_1004062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004062 := by
  apply coveredState_split_literal (state := state_1004062) 4
    state_1004063 state_1004142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004063
  · exact cover_1004142
#print axioms cover_1004062

def state_1004061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 88)))
theorem cover_1004061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004061 := by
  apply coveredState_split_literal (state := state_1004061) 0
    state_1004062 state_1004201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004062
  · exact cover_1004201
#print axioms cover_1004061

def state_1003997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 88)))
theorem cover_1003997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003997 := by
  apply coveredState_split_literal (state := state_1003997) 2
    state_1003998 state_1004061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003998
  · exact cover_1004061
#print axioms cover_1003997

def state_1003996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 88)))
theorem cover_1003996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003996 := by
  apply coveredState_split_literal (state := state_1003996) 1
    state_1003997 state_1004246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003997
  · exact cover_1004246
#print axioms cover_1003996

def state_1003995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 88)))
theorem cover_1003995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003995 := by
  apply coveredState_split_literal (state := state_1003995) 3
    state_1003996 state_1004293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003996
  · exact cover_1004293
#print axioms cover_1003995

def state_1004419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 89)))
theorem cover_1004419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004419 := by
  apply coveredState_split_literal (state := state_1004419) 0
    state_1004420 state_1004437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004420
  · exact cover_1004437
#print axioms cover_1004419

def state_1004401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 89)))
theorem cover_1004401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004401 := by
  apply coveredState_split_literal (state := state_1004401) 2
    state_1004402 state_1004419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004402
  · exact cover_1004419
#print axioms cover_1004401

def state_1004337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 89)))
theorem cover_1004337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004337 := by
  apply coveredState_split_literal (state := state_1004337) 1
    state_1004338 state_1004401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004338
  · exact cover_1004401
#print axioms cover_1004337

def state_1004336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 89)))
theorem cover_1004336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004336 := by
  apply coveredState_split_literal (state := state_1004336) 3
    state_1004337 state_1004484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004337
  · exact cover_1004484
#print axioms cover_1004336

def state_1003994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
theorem cover_1003994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003994 := by
  apply coveredState_split_literal (state := state_1003994) 4
    state_1003995 state_1004336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003995
  · exact cover_1004336
#print axioms cover_1003994

def state_1003993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
theorem cover_1003993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003993 := by
  apply coveredState_split_literal (state := state_1003993) 0
    state_1003994 state_1004501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003994
  · exact cover_1004501
#print axioms cover_1003993

def state_1003923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
theorem cover_1003923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003923 := by
  apply coveredState_split_literal (state := state_1003923) 1
    state_1003924 state_1003993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003924
  · exact cover_1003993
#print axioms cover_1003923

def state_1004598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 74 else (if j.val < 4 then 107 else 88)))
theorem cover_1004598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004598 := by
  apply coveredState_split_literal (state := state_1004598) 0
    state_1004599 state_1004640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004599
  · exact cover_1004640
#print axioms cover_1004598

def state_1004597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 74 else (if j.val < 4 then 107 else 88)))
theorem cover_1004597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004597 := by
  apply coveredState_split_literal (state := state_1004597) 1
    state_1004598 state_1004671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004598
  · exact cover_1004671
#print axioms cover_1004597

def state_1004596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 107 else 88)))
theorem cover_1004596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004596 := by
  apply coveredState_split_literal (state := state_1004596) 2
    state_1004597 state_1004694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004597
  · exact cover_1004694
#print axioms cover_1004596

def state_1004578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 88)))
theorem cover_1004578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004578 := by
  apply coveredState_split_literal (state := state_1004578) 3
    state_1004579 state_1004596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004579
  · exact cover_1004596
#print axioms cover_1004578

def state_1004703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 89)))
theorem cover_1004703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004703 := by
  apply coveredState_split_literal (state := state_1004703) 3
    state_1004704 state_1004745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004704
  · exact cover_1004745
#print axioms cover_1004703

def state_1004577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 44)))
theorem cover_1004577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004577 := by
  apply coveredState_split_literal (state := state_1004577) 4
    state_1004578 state_1004703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004578
  · exact cover_1004703
#print axioms cover_1004577

def state_1004576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 44)))
theorem cover_1004576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004576 := by
  apply coveredState_split_literal (state := state_1004576) 0
    state_1004577 state_1004808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004577
  · exact cover_1004808
#print axioms cover_1004576

def state_1004548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 44)))
theorem cover_1004548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004548 := by
  apply coveredState_split_literal (state := state_1004548) 1
    state_1004549 state_1004576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004549
  · exact cover_1004576
#print axioms cover_1004548

def state_1003922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 44)))
theorem cover_1003922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003922 := by
  apply coveredState_split_literal (state := state_1003922) 2
    state_1003923 state_1004548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1003923
  · exact cover_1004548
#print axioms cover_1003922

def state_1002828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 44)))
theorem cover_1002828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002828 := by
  apply coveredState_split_literal (state := state_1002828) 3
    state_1002829 state_1003922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002829
  · exact cover_1003922
#print axioms cover_1002828

def state_1004925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 90)))
theorem cover_1004925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004925 := by
  apply coveredState_split_literal (state := state_1004925) 2
    state_1004926 state_1004979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004926
  · exact cover_1004979
#print axioms cover_1004925

def state_1004915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 90)))
theorem cover_1004915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004915 := by
  apply coveredState_split_literal (state := state_1004915) 1
    state_1004916 state_1004925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004916
  · exact cover_1004925
#print axioms cover_1004915

def state_1004865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 90)))
theorem cover_1004865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004865 := by
  apply coveredState_split_literal (state := state_1004865) 3
    state_1004866 state_1004915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004866
  · exact cover_1004915
#print axioms cover_1004865

def state_1004864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 45)))
theorem cover_1004864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004864 := by
  apply coveredState_split_literal (state := state_1004864) 4
    state_1004865 state_1005000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004865
  · exact cover_1005000
#print axioms cover_1004864

def state_1004863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 45)))
theorem cover_1004863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004863 := by
  apply coveredState_split_literal (state := state_1004863) 0
    state_1004864 state_1005025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004864
  · exact cover_1005025
#print axioms cover_1004863

def state_1004861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 45)))
theorem cover_1004861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004861 := by
  apply coveredState_split_literal (state := state_1004861) 1
    state_1004862 state_1004863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004862
  · exact cover_1004863
#print axioms cover_1004861

def state_1004860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 45)))
theorem cover_1004860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004860 := by
  apply coveredState_split_literal (state := state_1004860) 2
    state_1004861 state_1005040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004861
  · exact cover_1005040
#print axioms cover_1004860
end Mub6.Numerical.CircleFullD0.Forest
