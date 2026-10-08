import CircleFullInterface
import CircleForestAssembly0077
import CircleForestChunk0313
import CircleForestChunk0314
import CircleForestChunk0315
import CircleForestChunk0316
import CircleForestChunk0317
import CircleForestChunk0318
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_150604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 27)))
theorem cover_150604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150604 := by
  apply coveredState_split_literal (state := state_150604) 4
    state_150605 state_150696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150605
  · exact cover_150696
#print axioms cover_150604

def state_150603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 27 else 27)))
theorem cover_150603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150603 := by
  apply coveredState_split_literal (state := state_150603) 3
    state_150604 state_150699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150604
  · exact cover_150699
#print axioms cover_150603

def state_150593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 46 else (if j.val < 4 then 27 else 27)))
theorem cover_150593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150593 := by
  apply coveredState_split_literal (state := state_150593) 1
    state_150594 state_150603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150594
  · exact cover_150603
#print axioms cover_150593

def state_150592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_150592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150592 := by
  apply coveredState_split_literal (state := state_150592) 2
    state_150593 state_150760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150593
  · exact cover_150760
#print axioms cover_150592

def state_150591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_150591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150591 := by
  apply coveredState_split_literal (state := state_150591) 0
    state_150592 state_150767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150592
  · exact cover_150767
#print axioms cover_150591

def state_150569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 13)))
theorem cover_150569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150569 := by
  apply coveredState_split_literal (state := state_150569) 4
    state_150570 state_150591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150570
  · exact cover_150591
#print axioms cover_150569

def state_150501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 13)))
theorem cover_150501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150501 := by
  apply coveredState_split_literal (state := state_150501) 3
    state_150502 state_150569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150502
  · exact cover_150569
#print axioms cover_150501

def state_150027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_150027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150027 := by
  apply coveredState_split_literal (state := state_150027) 2
    state_150028 state_150501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150028
  · exact cover_150501
#print axioms cover_150027

def state_150903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
theorem cover_150903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150903 := by
  apply coveredState_split_literal (state := state_150903) 0
    state_150904 state_150961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150904
  · exact cover_150961
#print axioms cover_150903

def state_150902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 27)))
theorem cover_150902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150902 := by
  apply coveredState_split_literal (state := state_150902) 4
    state_150903 state_150984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150903
  · exact cover_150984
#print axioms cover_150902

def state_150901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 27 else 27)))
theorem cover_150901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150901 := by
  apply coveredState_split_literal (state := state_150901) 3
    state_150902 state_151001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150902
  · exact cover_151001
#print axioms cover_150901

def state_150891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_150891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150891 := by
  apply coveredState_split_literal (state := state_150891) 2
    state_150892 state_150901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150892
  · exact cover_150901
#print axioms cover_150891

def state_150890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_150890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150890 := by
  apply coveredState_split_literal (state := state_150890) 1
    state_150891 state_151050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150891
  · exact cover_151050
#print axioms cover_150890

def state_150889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_150889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150889 := by
  apply coveredState_split_literal (state := state_150889) 0
    state_150890 state_151057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150890
  · exact cover_151057
#print axioms cover_150889

def state_150847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 13)))
theorem cover_150847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150847 := by
  apply coveredState_split_literal (state := state_150847) 4
    state_150848 state_150889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150848
  · exact cover_150889
#print axioms cover_150847

def state_150797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
theorem cover_150797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150797 := by
  apply coveredState_split_literal (state := state_150797) 3
    state_150798 state_150847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150798
  · exact cover_150847
#print axioms cover_150797

def state_151095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 27)))
theorem cover_151095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151095 := by
  apply coveredState_split_literal (state := state_151095) 0
    state_151096 state_151159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151096
  · exact cover_151159
#print axioms cover_151095

def state_151085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 13)))
theorem cover_151085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151085 := by
  apply coveredState_split_literal (state := state_151085) 4
    state_151086 state_151095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151086
  · exact cover_151095
#print axioms cover_151085

def state_151177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 26)))
theorem cover_151177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151177 := by
  apply coveredState_split_literal (state := state_151177) 0
    state_151178 state_151241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151178
  · exact cover_151241
#print axioms cover_151177

def state_151266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 92) else (if j.val < 3 then 92 else (if j.val < 4 then 54 else 54)))
theorem cover_151266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151266 := by
  apply coveredState_split_literal (state := state_151266) 3
    state_151267 state_151304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151267
  · exact cover_151304
#print axioms cover_151266

def state_151265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 92) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
theorem cover_151265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151265 := by
  apply coveredState_split_literal (state := state_151265) 2
    state_151266 state_151365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151266
  · exact cover_151365
#print axioms cover_151265

def state_151264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
theorem cover_151264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151264 := by
  apply coveredState_split_literal (state := state_151264) 1
    state_151265 state_151384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151265
  · exact cover_151384
#print axioms cover_151264

def state_151423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 92) else (if j.val < 3 then 92 else (if j.val < 4 then 109 else 54)))
theorem cover_151423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151423 := by
  apply coveredState_split_literal (state := state_151423) 4
    state_151424 state_151435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151424
  · exact cover_151435
#print axioms cover_151423

def state_151407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 92) else (if j.val < 3 then 92 else (if j.val < 4 then 54 else 54)))
theorem cover_151407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151407 := by
  apply coveredState_split_literal (state := state_151407) 3
    state_151408 state_151423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151408
  · exact cover_151423
#print axioms cover_151407

def state_151406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 92) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
theorem cover_151406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151406 := by
  apply coveredState_split_literal (state := state_151406) 2
    state_151407 state_151492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151407
  · exact cover_151492
#print axioms cover_151406

def state_151405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
theorem cover_151405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151405 := by
  apply coveredState_split_literal (state := state_151405) 1
    state_151406 state_151507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151406
  · exact cover_151507
#print axioms cover_151405

def state_151263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
theorem cover_151263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151263 := by
  apply coveredState_split_literal (state := state_151263) 0
    state_151264 state_151405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151264
  · exact cover_151405
#print axioms cover_151263

def state_151538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 55)))
theorem cover_151538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151538 := by
  apply coveredState_split_literal (state := state_151538) 0
    state_151539 state_151582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151539
  · exact cover_151582
#print axioms cover_151538

def state_151262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 27)))
theorem cover_151262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151262 := by
  apply coveredState_split_literal (state := state_151262) 4
    state_151263 state_151538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151263
  · exact cover_151538
#print axioms cover_151262

def state_151612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 54)))
theorem cover_151612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151612 := by
  apply coveredState_split_literal (state := state_151612) 0
    state_151613 state_151654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151613
  · exact cover_151654
#print axioms cover_151612

def state_151713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 55)))
theorem cover_151713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151713 := by
  apply coveredState_split_literal (state := state_151713) 1
    state_151714 state_151765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151714
  · exact cover_151765
#print axioms cover_151713

def state_151681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 55)))
theorem cover_151681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151681 := by
  apply coveredState_split_literal (state := state_151681) 0
    state_151682 state_151713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151682
  · exact cover_151713
#print axioms cover_151681
end Mub6.Numerical.CircleFullPrototype.Forest
