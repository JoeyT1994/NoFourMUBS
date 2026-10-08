import CircleFullInterface
import CircleForestAssembly0036
import CircleForestChunk0144
import CircleForestChunk0145
import CircleForestChunk0146
import CircleForestChunk0147
import CircleForestChunk0148
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_56140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
theorem cover_56140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56140 := by
  apply coveredState_split_literal (state := state_56140) 1
    state_56141 state_56200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56141
  · exact cover_56200
#print axioms cover_56140

def state_56139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_56139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56139 := by
  apply coveredState_split_literal (state := state_56139) 3
    state_56140 state_56207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56140
  · exact cover_56207
#print axioms cover_56139

def state_56079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_56079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56079 := by
  apply coveredState_split_literal (state := state_56079) 2
    state_56080 state_56139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56080
  · exact cover_56139
#print axioms cover_56079

def state_56075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_56075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56075 := by
  apply coveredState_split_literal (state := state_56075) 0
    state_56076 state_56079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56076
  · exact cover_56079
#print axioms cover_56075

def state_56069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_56069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56069 := by
  apply coveredState_split_literal (state := state_56069) 4
    state_56070 state_56075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56070
  · exact cover_56075
#print axioms cover_56069

def state_56068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_56068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56068 := by
  apply coveredState_split_literal (state := state_56068) 3
    state_56069 state_56208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56069
  · exact cover_56208
#print axioms cover_56068

def state_56067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_56067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56067 := by
  apply coveredState_split_literal (state := state_56067) 1
    state_56068 state_56209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56068
  · exact cover_56209
#print axioms cover_56067

def state_56066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_56066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56066 := by
  apply coveredState_split_literal (state := state_56066) 4
    state_56067 state_56210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56067
  · exact cover_56210
#print axioms cover_56066

def state_56065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_56065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56065 := by
  apply coveredState_split_literal (state := state_56065) 3
    state_56066 state_56245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56066
  · exact cover_56245
#print axioms cover_56065

def state_56064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_56064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56064 := by
  apply coveredState_split_literal (state := state_56064) 2
    state_56065 state_56254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56065
  · exact cover_56254
#print axioms cover_56064

def state_54322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_54322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54322 := by
  apply coveredState_split_literal (state := state_54322) 1
    state_54323 state_56064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54323
  · exact cover_56064
#print axioms cover_54322

def state_56492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 27)))
theorem cover_56492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56492 := by
  apply coveredState_split_literal (state := state_56492) 3
    state_56493 state_56556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56493
  · exact cover_56556
#print axioms cover_56492

def state_56491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 27)))
theorem cover_56491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56491 := by
  apply coveredState_split_literal (state := state_56491) 2
    state_56492 state_56597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56492
  · exact cover_56597
#print axioms cover_56491

def state_56461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 27)))
theorem cover_56461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56461 := by
  apply coveredState_split_literal (state := state_56461) 1
    state_56462 state_56491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56462
  · exact cover_56491
#print axioms cover_56461

def state_56435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
theorem cover_56435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56435 := by
  apply coveredState_split_literal (state := state_56435) 4
    state_56436 state_56461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56436
  · exact cover_56461
#print axioms cover_56435

def state_56434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
theorem cover_56434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56434 := by
  apply coveredState_split_literal (state := state_56434) 0
    state_56435 state_56612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56435
  · exact cover_56612
#print axioms cover_56434

def state_56433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_56433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56433 := by
  apply coveredState_split_literal (state := state_56433) 3
    state_56434 state_56625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56434
  · exact cover_56625
#print axioms cover_56433

def state_56379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_56379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56379 := by
  apply coveredState_split_literal (state := state_56379) 2
    state_56380 state_56433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56380
  · exact cover_56433
#print axioms cover_56379

def state_56343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_56343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56343 := by
  apply coveredState_split_literal (state := state_56343) 1
    state_56344 state_56379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56344
  · exact cover_56379
#print axioms cover_56343

def state_56321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_56321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56321 := by
  apply coveredState_split_literal (state := state_56321) 4
    state_56322 state_56343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56322
  · exact cover_56343
#print axioms cover_56321

def state_56320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_56320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56320 := by
  apply coveredState_split_literal (state := state_56320) 3
    state_56321 state_56656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56321
  · exact cover_56656
#print axioms cover_56320

def state_56319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_56319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56319 := by
  apply coveredState_split_literal (state := state_56319) 0
    state_56320 state_56661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56320
  · exact cover_56661
#print axioms cover_56319

def state_56692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 14)))
theorem cover_56692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56692 := by
  apply coveredState_split_literal (state := state_56692) 1
    state_56693 state_56708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56693
  · exact cover_56708
#print axioms cover_56692

def state_56691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 14)))
theorem cover_56691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56691 := by
  apply coveredState_split_literal (state := state_56691) 0
    state_56692 state_56759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56692
  · exact cover_56759
#print axioms cover_56691

def state_56690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 14)))
theorem cover_56690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56690 := by
  apply coveredState_split_literal (state := state_56690) 3
    state_56691 state_56770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56691
  · exact cover_56770
#print axioms cover_56690

def state_56689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 7)))
theorem cover_56689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56689 := by
  apply coveredState_split_literal (state := state_56689) 4
    state_56690 state_56779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56690
  · exact cover_56779
#print axioms cover_56689

def state_56788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
theorem cover_56788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56788 := by
  apply coveredState_split_literal (state := state_56788) 0
    state_56789 state_56850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56789
  · exact cover_56850
#print axioms cover_56788

def state_56787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_56787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56787 := by
  apply coveredState_split_literal (state := state_56787) 3
    state_56788 state_56869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56788
  · exact cover_56869
#print axioms cover_56787

def state_56786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 7)))
theorem cover_56786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56786 := by
  apply coveredState_split_literal (state := state_56786) 4
    state_56787 state_56898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56787
  · exact cover_56898
#print axioms cover_56786

def state_56688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_56688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56688 := by
  apply coveredState_split_literal (state := state_56688) 2
    state_56689 state_56786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56689
  · exact cover_56786
#print axioms cover_56688

def state_56670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_56670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56670 := by
  apply coveredState_split_literal (state := state_56670) 1
    state_56671 state_56688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56671
  · exact cover_56688
#print axioms cover_56670

def state_56669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_56669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56669 := by
  apply coveredState_split_literal (state := state_56669) 3
    state_56670 state_56901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_56670
  · exact cover_56901
#print axioms cover_56669
end Mub6.Numerical.CircleFullPrototype.Forest
