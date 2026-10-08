import CircleFullInterface
import CircleForestAssembly0003
import CircleForestChunk0018
import CircleForestChunk0019
import CircleForestChunk0020
import CircleForestChunk0021
import CircleForestChunk0022
import CircleForestChunk0023
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_144933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_144933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144933 := by
  apply coveredState_split_literal (state := state_144933) 2
    state_144934 state_146273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144934
  · exact cover_146273
#print axioms cover_144933

def state_144932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_144932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144932 := by
  apply coveredState_split_literal (state := state_144932) 1
    state_144933 state_146288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144933
  · exact cover_146288
#print axioms cover_144932

def state_144931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_144931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144931 := by
  apply coveredState_split_literal (state := state_144931) 4
    state_144932 state_146307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144932
  · exact cover_146307
#print axioms cover_144931

def state_144903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_144903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144903 := by
  apply coveredState_split_literal (state := state_144903) 0
    state_144904 state_144931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144904
  · exact cover_144931
#print axioms cover_144903

def state_144779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_144779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144779 := by
  apply coveredState_split_literal (state := state_144779) 4
    state_144780 state_144903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144780
  · exact cover_144903
#print axioms cover_144779

def state_144729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_144729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144729 := by
  apply coveredState_split_literal (state := state_144729) 3
    state_144730 state_144779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144730
  · exact cover_144779
#print axioms cover_144729

def state_144487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_144487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144487 := by
  apply coveredState_split_literal (state := state_144487) 2
    state_144488 state_144729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144488
  · exact cover_144729
#print axioms cover_144487

def state_143025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_143025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143025 := by
  apply coveredState_split_literal (state := state_143025) 1
    state_143026 state_144487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143026
  · exact cover_144487
#print axioms cover_143025

def state_142847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_142847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142847 := by
  apply coveredState_split_literal (state := state_142847) 0
    state_142848 state_143025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142848
  · exact cover_143025
#print axioms cover_142847

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

def state_147300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_147300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147300 := by
  apply coveredState_split_literal (state := state_147300) 2
    state_147301 state_147620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147301
  · exact cover_147620
#print axioms cover_147300

def state_146468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_146468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146468 := by
  apply coveredState_split_literal (state := state_146468) 1
    state_146469 state_147300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146469
  · exact cover_147300
#print axioms cover_146468

def state_146390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_146390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146390 := by
  apply coveredState_split_literal (state := state_146390) 0
    state_146391 state_146468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146391
  · exact cover_146468
#print axioms cover_146390

def state_142846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_142846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142846 := by
  apply coveredState_split_literal (state := state_142846) 4
    state_142847 state_146390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_142847
  · exact cover_146390
#print axioms cover_142846

def state_139194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_139194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139194 := by
  apply coveredState_split_literal (state := state_139194) 3
    state_139195 state_142846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139195
  · exact cover_142846
#print axioms cover_139194

def state_138306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_138306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138306 := by
  apply coveredState_split_literal (state := state_138306) 2
    state_138307 state_139194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138307
  · exact cover_139194
#print axioms cover_138306

def state_132168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_132168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132168 := by
  apply coveredState_split_literal (state := state_132168) 1
    state_132169 state_138306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132169
  · exact cover_138306
#print axioms cover_132168

def state_150796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_150796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150796 := by
  apply coveredState_split_literal (state := state_150796) 2
    state_150797 state_151084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150797
  · exact cover_151084
#print axioms cover_150796

def state_150026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_150026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150026 := by
  apply coveredState_split_literal (state := state_150026) 1
    state_150027 state_150796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150027
  · exact cover_150796
#print axioms cover_150026

def state_150025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_150025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150025 := by
  apply coveredState_split_literal (state := state_150025) 0
    state_150026 state_152055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150026
  · exact cover_152055
#print axioms cover_150025

def state_149999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 6)))
theorem cover_149999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149999 := by
  apply coveredState_split_literal (state := state_149999) 4
    state_150000 state_150025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150000
  · exact cover_150025
#print axioms cover_149999

def state_149969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_149969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149969 := by
  apply coveredState_split_literal (state := state_149969) 3
    state_149970 state_149999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149970
  · exact cover_149999
#print axioms cover_149969

def state_149909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_149909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149909 := by
  apply coveredState_split_literal (state := state_149909) 2
    state_149910 state_149969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149910
  · exact cover_149969
#print axioms cover_149909

def state_149807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_149807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149807 := by
  apply coveredState_split_literal (state := state_149807) 1
    state_149808 state_149909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149808
  · exact cover_149909
#print axioms cover_149807

def state_149806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_149806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149806 := by
  apply coveredState_split_literal (state := state_149806) 0
    state_149807 state_152192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149807
  · exact cover_152192
#print axioms cover_149806

def state_149805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_149805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149805 := by
  apply coveredState_split_literal (state := state_149805) 4
    state_149806 state_152263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149806
  · exact cover_152263
#print axioms cover_149805

def state_149804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_149804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149804 := by
  apply coveredState_split_literal (state := state_149804) 3
    state_149805 state_152534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149805
  · exact cover_152534
#print axioms cover_149804

def state_149752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_149752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149752 := by
  apply coveredState_split_literal (state := state_149752) 2
    state_149753 state_149804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149753
  · exact cover_149804
#print axioms cover_149752

def state_149688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_149688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149688 := by
  apply coveredState_split_literal (state := state_149688) 1
    state_149689 state_149752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149689
  · exact cover_149752
#print axioms cover_149688

def state_149687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_149687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149687 := by
  apply coveredState_split_literal (state := state_149687) 0
    state_149688 state_153189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149688
  · exact cover_153189
#print axioms cover_149687

def state_149479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_149479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149479 := by
  apply coveredState_split_literal (state := state_149479) 4
    state_149480 state_149687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149480
  · exact cover_149687
#print axioms cover_149479

def state_149233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_149233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149233 := by
  apply coveredState_split_literal (state := state_149233) 3
    state_149234 state_149479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149234
  · exact cover_149479
#print axioms cover_149233

def state_153434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_153434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153434 := by
  apply coveredState_split_literal (state := state_153434) 3
    state_153435 state_154344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_153435
  · exact cover_154344
#print axioms cover_153434

def state_149232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_149232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149232 := by
  apply coveredState_split_literal (state := state_149232) 2
    state_149233 state_153434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149233
  · exact cover_153434
#print axioms cover_149232

def state_155104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_155104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155104 := by
  apply coveredState_split_literal (state := state_155104) 4
    state_155105 state_155936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155105
  · exact cover_155936
#print axioms cover_155104

def state_154926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_154926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154926 := by
  apply coveredState_split_literal (state := state_154926) 3
    state_154927 state_155104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154927
  · exact cover_155104
#print axioms cover_154926

def state_157332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
theorem cover_157332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157332 := by
  apply coveredState_split_literal (state := state_157332) 3
    state_157333 state_158016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157333
  · exact cover_158016
#print axioms cover_157332

def state_157331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
theorem cover_157331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157331 := by
  apply coveredState_split_literal (state := state_157331) 0
    state_157332 state_158383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157332
  · exact cover_158383
#print axioms cover_157331

def state_157095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
theorem cover_157095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157095 := by
  apply coveredState_split_literal (state := state_157095) 4
    state_157096 state_157331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157096
  · exact cover_157331
#print axioms cover_157095

def state_157094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_157094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157094 := by
  apply coveredState_split_literal (state := state_157094) 2
    state_157095 state_158424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157095
  · exact cover_158424
#print axioms cover_157094

def state_157093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_157093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157093 := by
  apply coveredState_split_literal (state := state_157093) 1
    state_157094 state_158491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157094
  · exact cover_158491
#print axioms cover_157093

def state_157092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_157092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157092 := by
  apply coveredState_split_literal (state := state_157092) 3
    state_157093 state_158578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157093
  · exact cover_158578
#print axioms cover_157092

def state_157091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_157091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157091 := by
  apply coveredState_split_literal (state := state_157091) 0
    state_157092 state_158685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157092
  · exact cover_158685
#print axioms cover_157091

def state_157061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_157061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157061 := by
  apply coveredState_split_literal (state := state_157061) 4
    state_157062 state_157091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157062
  · exact cover_157091
#print axioms cover_157061

def state_156995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_156995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156995 := by
  apply coveredState_split_literal (state := state_156995) 3
    state_156996 state_157061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156996
  · exact cover_157061
#print axioms cover_156995

def state_156815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_156815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156815 := by
  apply coveredState_split_literal (state := state_156815) 2
    state_156816 state_156995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156816
  · exact cover_156995
#print axioms cover_156815

def state_156419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_156419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156419 := by
  apply coveredState_split_literal (state := state_156419) 1
    state_156420 state_156815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156420
  · exact cover_156815
#print axioms cover_156419

def state_156418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_156418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156418 := by
  apply coveredState_split_literal (state := state_156418) 0
    state_156419 state_158712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156419
  · exact cover_158712
#print axioms cover_156418

def state_156398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_156398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156398 := by
  apply coveredState_split_literal (state := state_156398) 4
    state_156399 state_156418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156399
  · exact cover_156418
#print axioms cover_156398

def state_159662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
theorem cover_159662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159662 := by
  apply coveredState_split_literal (state := state_159662) 4
    state_159663 state_160354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159663
  · exact cover_160354
#print axioms cover_159662

def state_159661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
theorem cover_159661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159661 := by
  apply coveredState_split_literal (state := state_159661) 0
    state_159662 state_160721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159662
  · exact cover_160721
#print axioms cover_159661

def state_159429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 10)))
theorem cover_159429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159429 := by
  apply coveredState_split_literal (state := state_159429) 3
    state_159430 state_159661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159430
  · exact cover_159661
#print axioms cover_159429

def state_159428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_159428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159428 := by
  apply coveredState_split_literal (state := state_159428) 2
    state_159429 state_160756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159429
  · exact cover_160756
#print axioms cover_159428

def state_159427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_159427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159427 := by
  apply coveredState_split_literal (state := state_159427) 1
    state_159428 state_160803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159428
  · exact cover_160803
#print axioms cover_159427

def state_159426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_159426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159426 := by
  apply coveredState_split_literal (state := state_159426) 4
    state_159427 state_160908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159427
  · exact cover_160908
#print axioms cover_159426

def state_159425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_159425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159425 := by
  apply coveredState_split_literal (state := state_159425) 0
    state_159426 state_161011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159426
  · exact cover_161011
#print axioms cover_159425

def state_159365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_159365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159365 := by
  apply coveredState_split_literal (state := state_159365) 4
    state_159366 state_159425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159366
  · exact cover_159425
#print axioms cover_159365

def state_159335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_159335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159335 := by
  apply coveredState_split_literal (state := state_159335) 3
    state_159336 state_159365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_159336
  · exact cover_159365
#print axioms cover_159335

def state_158993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_158993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158993 := by
  apply coveredState_split_literal (state := state_158993) 2
    state_158994 state_159335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158994
  · exact cover_159335
#print axioms cover_158993

def state_158761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_158761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158761 := by
  apply coveredState_split_literal (state := state_158761) 1
    state_158762 state_158993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158762
  · exact cover_158993
#print axioms cover_158761

def state_158760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_158760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158760 := by
  apply coveredState_split_literal (state := state_158760) 0
    state_158761 state_161038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158761
  · exact cover_161038
#print axioms cover_158760
end Mub6.Numerical.CircleFullPrototype.Forest
