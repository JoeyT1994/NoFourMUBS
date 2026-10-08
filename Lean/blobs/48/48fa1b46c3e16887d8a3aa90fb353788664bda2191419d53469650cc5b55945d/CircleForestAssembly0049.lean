import CircleFullInterface
import CircleForestAssembly0048
import CircleForestChunk0196
import CircleForestChunk0197
import CircleForestChunk0198
import CircleForestChunk0199
import CircleForestChunk0200
import CircleForestChunk0201
import CircleForestChunk0202
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_984817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 101 else 42)))
theorem cover_984817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984817 := by
  apply coveredState_split_literal (state := state_984817) 1
    state_984818 state_984839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984818
  · exact cover_984839
#print axioms cover_984817

def state_984809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 50 else 42)))
theorem cover_984809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984809 := by
  apply coveredState_split_literal (state := state_984809) 3
    state_984810 state_984817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984810
  · exact cover_984817
#print axioms cover_984809

def state_984717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 50 else 42)))
theorem cover_984717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984717 := by
  apply coveredState_split_literal (state := state_984717) 0
    state_984718 state_984809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984718
  · exact cover_984809
#print axioms cover_984717

def state_984716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 42)))
theorem cover_984716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984716 := by
  apply coveredState_split_literal (state := state_984716) 2
    state_984717 state_984896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984717
  · exact cover_984896
#print axioms cover_984716

def state_984912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 50 else 43)))
theorem cover_984912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984912 := by
  apply coveredState_split_literal (state := state_984912) 0
    state_984913 state_984932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984913
  · exact cover_984932
#print axioms cover_984912

def state_984911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 43)))
theorem cover_984911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984911 := by
  apply coveredState_split_literal (state := state_984911) 2
    state_984912 state_984983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984912
  · exact cover_984983
#print axioms cover_984911

def state_984715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 21)))
theorem cover_984715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984715 := by
  apply coveredState_split_literal (state := state_984715) 4
    state_984716 state_984911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984716
  · exact cover_984911
#print axioms cover_984715

def state_984687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 21)))
theorem cover_984687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984687 := by
  apply coveredState_split_literal (state := state_984687) 1
    state_984688 state_984715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984688
  · exact cover_984715
#print axioms cover_984687

def state_985060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 84)))
theorem cover_985060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985060 := by
  apply coveredState_split_literal (state := state_985060) 2
    state_985061 state_985104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985061
  · exact cover_985104
#print axioms cover_985060

def state_985059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 42)))
theorem cover_985059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985059 := by
  apply coveredState_split_literal (state := state_985059) 4
    state_985060 state_985127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985060
  · exact cover_985127
#print axioms cover_985059

def state_985178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 85)))
theorem cover_985178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985178 := by
  apply coveredState_split_literal (state := state_985178) 2
    state_985179 state_985216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985179
  · exact cover_985216
#print axioms cover_985178

def state_985156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 42)))
theorem cover_985156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985156 := by
  apply coveredState_split_literal (state := state_985156) 4
    state_985157 state_985178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985157
  · exact cover_985178
#print axioms cover_985156

def state_985058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 42)))
theorem cover_985058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985058 := by
  apply coveredState_split_literal (state := state_985058) 1
    state_985059 state_985156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985059
  · exact cover_985156
#print axioms cover_985058

def state_985259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 42)))
theorem cover_985259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985259 := by
  apply coveredState_split_literal (state := state_985259) 1
    state_985260 state_985293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985260
  · exact cover_985293
#print axioms cover_985259

def state_985057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 42)))
theorem cover_985057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985057 := by
  apply coveredState_split_literal (state := state_985057) 3
    state_985058 state_985259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985058
  · exact cover_985259
#print axioms cover_985057

def state_985329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 84)))
theorem cover_985329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985329 := by
  apply coveredState_split_literal (state := state_985329) 2
    state_985330 state_985389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985330
  · exact cover_985389
#print axioms cover_985329

def state_985328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 42)))
theorem cover_985328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985328 := by
  apply coveredState_split_literal (state := state_985328) 4
    state_985329 state_985406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985329
  · exact cover_985406
#print axioms cover_985328

def state_985438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 84)))
theorem cover_985438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985438 := by
  apply coveredState_split_literal (state := state_985438) 2
    state_985439 state_985482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985439
  · exact cover_985482
#print axioms cover_985438

def state_985521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 68 else (if j.val < 4 then 102 else 85)))
theorem cover_985521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985521 := by
  apply coveredState_split_literal (state := state_985521) 3
    state_985522 state_985575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985522
  · exact cover_985575
#print axioms cover_985521

def state_985520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 68 else (if j.val < 4 then 102 else 85)))
theorem cover_985520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985520 := by
  apply coveredState_split_literal (state := state_985520) 0
    state_985521 state_985612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985521
  · exact cover_985612
#print axioms cover_985520

def state_985640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 205 else 85)))
theorem cover_985640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985640 := by
  apply coveredState_split_literal (state := state_985640) 4
    state_985641 state_985680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985641
  · exact cover_985680
#print axioms cover_985640

def state_985628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 85)))
theorem cover_985628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985628 := by
  apply coveredState_split_literal (state := state_985628) 3
    state_985629 state_985640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985629
  · exact cover_985640
#print axioms cover_985628

def state_985627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 85)))
theorem cover_985627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985627 := by
  apply coveredState_split_literal (state := state_985627) 0
    state_985628 state_985741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985628
  · exact cover_985741
#print axioms cover_985627

def state_985519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 85)))
theorem cover_985519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985519 := by
  apply coveredState_split_literal (state := state_985519) 2
    state_985520 state_985627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985520
  · exact cover_985627
#print axioms cover_985519

def state_985437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 42)))
theorem cover_985437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985437 := by
  apply coveredState_split_literal (state := state_985437) 4
    state_985438 state_985519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985438
  · exact cover_985519
#print axioms cover_985437

def state_985327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 42)))
theorem cover_985327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985327 := by
  apply coveredState_split_literal (state := state_985327) 1
    state_985328 state_985437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985328
  · exact cover_985437
#print axioms cover_985327

def state_985752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 84)))
theorem cover_985752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985752 := by
  apply coveredState_split_literal (state := state_985752) 2
    state_985753 state_985784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985753
  · exact cover_985784
#print axioms cover_985752

def state_985751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 42)))
theorem cover_985751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985751 := by
  apply coveredState_split_literal (state := state_985751) 4
    state_985752 state_985819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985752
  · exact cover_985819
#print axioms cover_985751

def state_985974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 171)))
theorem cover_985974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985974 := by
  apply coveredState_split_literal (state := state_985974) 1
    state_985975 state_985986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985975
  · exact cover_985986
#print axioms cover_985974

def state_985928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 85)))
theorem cover_985928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985928 := by
  apply coveredState_split_literal (state := state_985928) 4
    state_985929 state_985974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985929
  · exact cover_985974
#print axioms cover_985928

def state_985927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 103 else 85)))
theorem cover_985927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985927 := by
  apply coveredState_split_literal (state := state_985927) 3
    state_985928 state_986047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985928
  · exact cover_986047
#print axioms cover_985927

def state_986090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 103 else 85)))
theorem cover_986090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986090 := by
  apply coveredState_split_literal (state := state_986090) 3
    state_986091 state_986126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986091
  · exact cover_986126
#print axioms cover_986090
end Mub6.Numerical.CircleFullD0.Forest
