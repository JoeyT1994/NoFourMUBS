import CircleFullInterface
import CircleForestAssembly0097
import CircleForestChunk0391
import CircleForestChunk0392
import CircleForestChunk0393
import CircleForestChunk0394
import CircleForestChunk0395
import CircleForestChunk0396
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_169564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 14)))
theorem cover_169564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169564 := by
  apply coveredState_split_literal (state := state_169564) 0
    state_169565 state_169604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169565
  · exact cover_169604
#print axioms cover_169564

def state_169563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 14)))
theorem cover_169563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169563 := by
  apply coveredState_split_literal (state := state_169563) 3
    state_169564 state_169795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169564
  · exact cover_169795
#print axioms cover_169563

def state_169475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 14)))
theorem cover_169475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169475 := by
  apply coveredState_split_literal (state := state_169475) 2
    state_169476 state_169563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169476
  · exact cover_169563
#print axioms cover_169475

def state_169849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 30)))
theorem cover_169849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169849 := by
  apply coveredState_split_literal (state := state_169849) 1
    state_169850 state_169885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169850
  · exact cover_169885
#print axioms cover_169849

def state_169848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 30)))
theorem cover_169848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169848 := by
  apply coveredState_split_literal (state := state_169848) 0
    state_169849 state_169930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169849
  · exact cover_169930
#print axioms cover_169848

def state_169847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 24 else 30)))
theorem cover_169847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169847 := by
  apply coveredState_split_literal (state := state_169847) 3
    state_169848 state_169983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169848
  · exact cover_169983
#print axioms cover_169847

def state_169839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 30)))
theorem cover_169839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169839 := by
  apply coveredState_split_literal (state := state_169839) 2
    state_169840 state_169847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169840
  · exact cover_169847
#print axioms cover_169839

def state_169838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 15)))
theorem cover_169838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169838 := by
  apply coveredState_split_literal (state := state_169838) 4
    state_169839 state_169988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169839
  · exact cover_169988
#print axioms cover_169838

def state_169828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 15)))
theorem cover_169828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169828 := by
  apply coveredState_split_literal (state := state_169828) 1
    state_169829 state_169838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169829
  · exact cover_169838
#print axioms cover_169828

def state_169804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 15)))
theorem cover_169804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169804 := by
  apply coveredState_split_literal (state := state_169804) 0
    state_169805 state_169828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169805
  · exact cover_169828
#print axioms cover_169804

def state_169803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 15)))
theorem cover_169803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169803 := by
  apply coveredState_split_literal (state := state_169803) 3
    state_169804 state_170011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169804
  · exact cover_170011
#print axioms cover_169803

def state_170098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 30)))
theorem cover_170098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170098 := by
  apply coveredState_split_literal (state := state_170098) 4
    state_170099 state_170124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170099
  · exact cover_170124
#print axioms cover_170098

def state_170225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 61)))
theorem cover_170225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170225 := by
  apply coveredState_split_literal (state := state_170225) 3
    state_170226 state_170283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170226
  · exact cover_170283
#print axioms cover_170225

def state_170165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 30)))
theorem cover_170165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170165 := by
  apply coveredState_split_literal (state := state_170165) 4
    state_170166 state_170225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170166
  · exact cover_170225
#print axioms cover_170165

def state_170097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 30)))
theorem cover_170097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170097 := by
  apply coveredState_split_literal (state := state_170097) 1
    state_170098 state_170165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170098
  · exact cover_170165
#print axioms cover_170097

def state_170390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 61)))
theorem cover_170390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170390 := by
  apply coveredState_split_literal (state := state_170390) 3
    state_170391 state_170438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170391
  · exact cover_170438
#print axioms cover_170390

def state_170332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 30)))
theorem cover_170332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170332 := by
  apply coveredState_split_literal (state := state_170332) 4
    state_170333 state_170390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170333
  · exact cover_170390
#print axioms cover_170332

def state_170300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 30)))
theorem cover_170300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170300 := by
  apply coveredState_split_literal (state := state_170300) 1
    state_170301 state_170332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170301
  · exact cover_170332
#print axioms cover_170300

def state_170096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 30)))
theorem cover_170096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170096 := by
  apply coveredState_split_literal (state := state_170096) 0
    state_170097 state_170300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170097
  · exact cover_170300
#print axioms cover_170096

def state_170095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 48 else 30)))
theorem cover_170095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170095 := by
  apply coveredState_split_literal (state := state_170095) 2
    state_170096 state_170475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170096
  · exact cover_170475
#print axioms cover_170095

def state_170094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 30)))
theorem cover_170094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170094 := by
  apply coveredState_split_literal (state := state_170094) 3
    state_170095 state_170530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170095
  · exact cover_170530
#print axioms cover_170094

def state_170093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
theorem cover_170093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170093 := by
  apply coveredState_split_literal (state := state_170093) 4
    state_170094 state_170591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170094
  · exact cover_170591
#print axioms cover_170093

def state_170071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
theorem cover_170071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170071 := by
  apply coveredState_split_literal (state := state_170071) 1
    state_170072 state_170093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170072
  · exact cover_170093
#print axioms cover_170071

def state_170013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
theorem cover_170013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170013 := by
  apply coveredState_split_literal (state := state_170013) 0
    state_170014 state_170071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170014
  · exact cover_170071
#print axioms cover_170013

def state_170012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 15)))
theorem cover_170012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170012 := by
  apply coveredState_split_literal (state := state_170012) 3
    state_170013 state_170636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170013
  · exact cover_170636
#print axioms cover_170012

def state_169802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_169802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169802 := by
  apply coveredState_split_literal (state := state_169802) 2
    state_169803 state_170012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169803
  · exact cover_170012
#print axioms cover_169802

def state_169474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_169474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169474 := by
  apply coveredState_split_literal (state := state_169474) 4
    state_169475 state_169802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169475
  · exact cover_169802
#print axioms cover_169474

def state_169446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_169446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169446 := by
  apply coveredState_split_literal (state := state_169446) 1
    state_169447 state_169474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169447
  · exact cover_169474
#print axioms cover_169446

def state_169410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_169410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169410 := by
  apply coveredState_split_literal (state := state_169410) 0
    state_169411 state_169446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169411
  · exact cover_169446
#print axioms cover_169410

def state_169409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_169409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169409 := by
  apply coveredState_split_literal (state := state_169409) 3
    state_169410 state_170657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_169410
  · exact cover_170657
#print axioms cover_169409

def state_170671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
theorem cover_170671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170671 := by
  apply coveredState_split_literal (state := state_170671) 4
    state_170672 state_170713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170672
  · exact cover_170713
#print axioms cover_170671

def state_170669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
theorem cover_170669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170669 := by
  apply coveredState_split_literal (state := state_170669) 1
    state_170670 state_170671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_170670
  · exact cover_170671
#print axioms cover_170669
end Mub6.Numerical.CircleFullPrototype.Forest
