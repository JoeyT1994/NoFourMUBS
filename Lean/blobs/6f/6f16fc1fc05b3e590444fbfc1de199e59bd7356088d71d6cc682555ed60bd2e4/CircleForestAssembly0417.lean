import CircleFullInterface
import CircleForestAssembly0416
import CircleForestChunk1627
import CircleForestChunk1628
import CircleForestChunk1629
import CircleForestChunk1630
import CircleForestChunk1631
import CircleForestChunk1632
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2263678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
theorem cover_2263678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263678 := by
  apply coveredState_split_literal (state := state_2263678) 0
    state_2263679 state_2263778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263679
  · exact cover_2263778
#print axioms cover_2263678

def state_2263875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 111)))
theorem cover_2263875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263875 := by
  apply coveredState_split_literal (state := state_2263875) 0
    state_2263876 state_2263923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263876
  · exact cover_2263923
#print axioms cover_2263875

def state_2263677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2263677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263677 := by
  apply coveredState_split_literal (state := state_2263677) 4
    state_2263678 state_2263875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263678
  · exact cover_2263875
#print axioms cover_2263677

def state_2263597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2263597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263597 := by
  apply coveredState_split_literal (state := state_2263597) 1
    state_2263598 state_2263677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263598
  · exact cover_2263677
#print axioms cover_2263597

def state_2263964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
theorem cover_2263964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263964 := by
  apply coveredState_split_literal (state := state_2263964) 1
    state_2263965 state_2263980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263965
  · exact cover_2263980
#print axioms cover_2263964

def state_2263596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
theorem cover_2263596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263596 := by
  apply coveredState_split_literal (state := state_2263596) 2
    state_2263597 state_2263964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263597
  · exact cover_2263964
#print axioms cover_2263596

def state_2263442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2263442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263442 := by
  apply coveredState_split_literal (state := state_2263442) 3
    state_2263443 state_2263596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263443
  · exact cover_2263596
#print axioms cover_2263442

def state_2263288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2263288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263288 := by
  apply coveredState_split_literal (state := state_2263288) 4
    state_2263289 state_2263442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263289
  · exact cover_2263442
#print axioms cover_2263288

def state_2264084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2264084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264084 := by
  apply coveredState_split_literal (state := state_2264084) 1
    state_2264085 state_2264090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264085
  · exact cover_2264090
#print axioms cover_2264084

def state_2264083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
theorem cover_2264083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264083 := by
  apply coveredState_split_literal (state := state_2264083) 2
    state_2264084 state_2264151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264084
  · exact cover_2264151
#print axioms cover_2264083

def state_2264061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2264061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264061 := by
  apply coveredState_split_literal (state := state_2264061) 3
    state_2264062 state_2264083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264062
  · exact cover_2264083
#print axioms cover_2264061

def state_2264043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2264043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264043 := by
  apply coveredState_split_literal (state := state_2264043) 4
    state_2264044 state_2264061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264044
  · exact cover_2264061
#print axioms cover_2264043

def state_2263287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2263287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263287 := by
  apply coveredState_split_literal (state := state_2263287) 0
    state_2263288 state_2264043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263288
  · exact cover_2264043
#print axioms cover_2263287

def state_2264172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 54)))
theorem cover_2264172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264172 := by
  apply coveredState_split_literal (state := state_2264172) 3
    state_2264173 state_2264198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264173
  · exact cover_2264198
#print axioms cover_2264172

def state_2264239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
theorem cover_2264239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264239 := by
  apply coveredState_split_literal (state := state_2264239) 1
    state_2264240 state_2264301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264240
  · exact cover_2264301
#print axioms cover_2264239

def state_2264238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 55)))
theorem cover_2264238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264238 := by
  apply coveredState_split_literal (state := state_2264238) 2
    state_2264239 state_2264304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264239
  · exact cover_2264304
#print axioms cover_2264238

def state_2264330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
theorem cover_2264330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264330 := by
  apply coveredState_split_literal (state := state_2264330) 0
    state_2264331 state_2264346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264331
  · exact cover_2264346
#print axioms cover_2264330

def state_2264329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2264329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264329 := by
  apply coveredState_split_literal (state := state_2264329) 4
    state_2264330 state_2264399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264330
  · exact cover_2264399
#print axioms cover_2264329

def state_2264328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2264328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264328 := by
  apply coveredState_split_literal (state := state_2264328) 1
    state_2264329 state_2264418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264329
  · exact cover_2264418
#print axioms cover_2264328

def state_2264327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
theorem cover_2264327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264327 := by
  apply coveredState_split_literal (state := state_2264327) 2
    state_2264328 state_2264425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264328
  · exact cover_2264425
#print axioms cover_2264327

def state_2264237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
theorem cover_2264237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264237 := by
  apply coveredState_split_literal (state := state_2264237) 3
    state_2264238 state_2264327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264238
  · exact cover_2264327
#print axioms cover_2264237

def state_2264171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2264171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264171 := by
  apply coveredState_split_literal (state := state_2264171) 4
    state_2264172 state_2264237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264172
  · exact cover_2264237
#print axioms cover_2264171

def state_2264478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 54)))
theorem cover_2264478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264478 := by
  apply coveredState_split_literal (state := state_2264478) 1
    state_2264479 state_2264538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264479
  · exact cover_2264538
#print axioms cover_2264478

def state_2264477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 54)))
theorem cover_2264477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264477 := by
  apply coveredState_split_literal (state := state_2264477) 2
    state_2264478 state_2264547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264478
  · exact cover_2264547
#print axioms cover_2264477

def state_2264453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 54)))
theorem cover_2264453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264453 := by
  apply coveredState_split_literal (state := state_2264453) 3
    state_2264454 state_2264477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264454
  · exact cover_2264477
#print axioms cover_2264453

def state_2264555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
theorem cover_2264555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264555 := by
  apply coveredState_split_literal (state := state_2264555) 0
    state_2264556 state_2264615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264556
  · exact cover_2264615
#print axioms cover_2264555

def state_2264554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
theorem cover_2264554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264554 := by
  apply coveredState_split_literal (state := state_2264554) 1
    state_2264555 state_2264646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264555
  · exact cover_2264646
#print axioms cover_2264554

def state_2264553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 55)))
theorem cover_2264553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264553 := by
  apply coveredState_split_literal (state := state_2264553) 2
    state_2264554 state_2264665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264554
  · exact cover_2264665
#print axioms cover_2264553

def state_2264728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2264728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264728 := by
  apply coveredState_split_literal (state := state_2264728) 0
    state_2264729 state_2264792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264729
  · exact cover_2264792
#print axioms cover_2264728

def state_2264727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
theorem cover_2264727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264727 := by
  apply coveredState_split_literal (state := state_2264727) 1
    state_2264728 state_2264823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264728
  · exact cover_2264823
#print axioms cover_2264727

def state_2264843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 106) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
theorem cover_2264843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264843 := by
  apply coveredState_split_literal (state := state_2264843) 0
    state_2264844 state_2264891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264844
  · exact cover_2264891
#print axioms cover_2264843

def state_2264842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
theorem cover_2264842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264842 := by
  apply coveredState_split_literal (state := state_2264842) 1
    state_2264843 state_2264908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2264843
  · exact cover_2264908
#print axioms cover_2264842
end Mub6.Numerical.CircleFullD0.Forest
