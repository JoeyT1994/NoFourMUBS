import CircleFullInterface
import CircleForestAssembly0005
import CircleForestAssembly0006
import CircleForestAssembly0012
import CircleForestAssembly0013
import CircleForestChunk0052
import CircleForestChunk0053
import CircleForestChunk0054
import CircleForestChunk0055
import CircleForestChunk0056
import CircleForestChunk0057
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_12576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_12576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12576 := by
  apply coveredState_split_literal (state := state_12576) 3
    state_12577 state_12592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12577
  · exact cover_12592
#print axioms cover_12576

def state_12575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_12575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12575 := by
  apply coveredState_split_literal (state := state_12575) 1
    state_12576 state_12779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12576
  · exact cover_12779
#print axioms cover_12575

def state_12555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_12555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12555 := by
  apply coveredState_split_literal (state := state_12555) 2
    state_12556 state_12575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12556
  · exact cover_12575
#print axioms cover_12555

def state_12554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_12554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12554 := by
  apply coveredState_split_literal (state := state_12554) 0
    state_12555 state_12792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12555
  · exact cover_12792
#print axioms cover_12554

def state_12553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_12553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12553 := by
  apply coveredState_split_literal (state := state_12553) 4
    state_12554 state_12843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12554
  · exact cover_12843
#print axioms cover_12553

def state_12864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
theorem cover_12864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12864 := by
  apply coveredState_split_literal (state := state_12864) 3
    state_12865 state_12926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12865
  · exact cover_12926
#print axioms cover_12864

def state_12846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_12846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12846 := by
  apply coveredState_split_literal (state := state_12846) 2
    state_12847 state_12864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12847
  · exact cover_12864
#print axioms cover_12846

def state_12845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_12845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12845 := by
  apply coveredState_split_literal (state := state_12845) 0
    state_12846 state_12943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12846
  · exact cover_12943
#print axioms cover_12845

def state_12844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_12844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12844 := by
  apply coveredState_split_literal (state := state_12844) 4
    state_12845 state_12960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12845
  · exact cover_12960
#print axioms cover_12844

def state_12552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_12552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12552 := by
  apply coveredState_split_literal (state := state_12552) 3
    state_12553 state_12844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12553
  · exact cover_12844
#print axioms cover_12552

def state_13026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
theorem cover_13026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13026 := by
  apply coveredState_split_literal (state := state_13026) 0
    state_13027 state_13082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13027
  · exact cover_13082
#print axioms cover_13026

def state_13008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 4)))
theorem cover_13008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13008 := by
  apply coveredState_split_literal (state := state_13008) 4
    state_13009 state_13026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13009
  · exact cover_13026
#print axioms cover_13008

def state_12988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 4)))
theorem cover_12988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12988 := by
  apply coveredState_split_literal (state := state_12988) 3
    state_12989 state_13008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12989
  · exact cover_13008
#print axioms cover_12988

def state_12987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_12987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12987 := by
  apply coveredState_split_literal (state := state_12987) 2
    state_12988 state_13119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12988
  · exact cover_13119
#print axioms cover_12987

def state_12986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_12986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12986 := by
  apply coveredState_split_literal (state := state_12986) 1
    state_12987 state_13130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12987
  · exact cover_13130
#print axioms cover_12986

def state_12985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_12985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12985 := by
  apply coveredState_split_literal (state := state_12985) 0
    state_12986 state_13149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12986
  · exact cover_13149
#print axioms cover_12985

def state_12984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_12984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12984 := by
  apply coveredState_split_literal (state := state_12984) 4
    state_12985 state_13182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12985
  · exact cover_13182
#print axioms cover_12984

def state_13301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_13301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13301 := by
  apply coveredState_split_literal (state := state_13301) 0
    state_13302 state_13337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13302
  · exact cover_13337
#print axioms cover_13301

def state_13239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_13239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13239 := by
  apply coveredState_split_literal (state := state_13239) 4
    state_13240 state_13301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13240
  · exact cover_13301
#print axioms cover_13239

def state_12983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_12983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12983 := by
  apply coveredState_split_literal (state := state_12983) 3
    state_12984 state_13239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12984
  · exact cover_13239
#print axioms cover_12983

def state_12551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_12551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12551 := by
  apply coveredState_split_literal (state := state_12551) 2
    state_12552 state_12983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_12552
  · exact cover_12983
#print axioms cover_12551

def state_11445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_11445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11445 := by
  apply coveredState_split_literal (state := state_11445) 1
    state_11446 state_12551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_11446
  · exact cover_12551
#print axioms cover_11445

def state_5763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_5763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5763 := by
  apply coveredState_split_literal (state := state_5763) 0
    state_5764 state_11445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5764
  · exact cover_11445
#print axioms cover_5763

def state_13380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_13380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13380 := by
  apply coveredState_split_literal (state := state_13380) 0
    state_13381 state_13426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13381
  · exact cover_13426
#print axioms cover_13380

def state_5762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_5762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5762 := by
  apply coveredState_split_literal (state := state_5762) 4
    state_5763 state_13380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5763
  · exact cover_13380
#print axioms cover_5762

def state_13468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_13468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13468 := by
  apply coveredState_split_literal (state := state_13468) 0
    state_13469 state_13512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13469
  · exact cover_13512
#print axioms cover_13468

def state_13577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_13577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13577 := by
  apply coveredState_split_literal (state := state_13577) 1
    state_13578 state_13641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13578
  · exact cover_13641
#print axioms cover_13577

def state_13557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_13557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13557 := by
  apply coveredState_split_literal (state := state_13557) 0
    state_13558 state_13577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13558
  · exact cover_13577
#print axioms cover_13557

def state_13467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_13467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13467 := by
  apply coveredState_split_literal (state := state_13467) 4
    state_13468 state_13557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13468
  · exact cover_13557
#print axioms cover_13467

def state_5761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_5761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5761 := by
  apply coveredState_split_literal (state := state_5761) 3
    state_5762 state_13467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_5762
  · exact cover_13467
#print axioms cover_5761

def state_4683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_4683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4683 := by
  apply coveredState_split_literal (state := state_4683) 2
    state_4684 state_5761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4684
  · exact cover_5761
#print axioms cover_4683

def state_2933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_2933 := by
  apply coveredState_split_literal (state := state_2933) 1
    state_2934 state_4683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2934
  · exact cover_4683
#print axioms cover_2933
end Mub6.Numerical.CircleFullPrototype.Forest
