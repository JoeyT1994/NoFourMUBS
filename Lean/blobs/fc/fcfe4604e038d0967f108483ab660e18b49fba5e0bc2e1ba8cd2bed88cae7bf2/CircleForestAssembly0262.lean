import CircleFullInterface
import CircleForestAssembly0261
import CircleForestChunk1004
import CircleForestChunk1005
import CircleForestChunk1006
import CircleForestChunk1007
import CircleForestChunk1008
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1541443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 22)))
theorem cover_1541443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541443 := by
  apply coveredState_split_literal (state := state_1541443) 2
    state_1541444 state_1541523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541444
  · exact cover_1541523
#print axioms cover_1541443

def state_1541433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 22)))
theorem cover_1541433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541433 := by
  apply coveredState_split_literal (state := state_1541433) 0
    state_1541434 state_1541443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541434
  · exact cover_1541443
#print axioms cover_1541433

def state_1541432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 22)))
theorem cover_1541432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541432 := by
  apply coveredState_split_literal (state := state_1541432) 1
    state_1541433 state_1541532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541433
  · exact cover_1541532
#print axioms cover_1541432

def state_1541680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 44)))
theorem cover_1541680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541680 := by
  apply coveredState_split_literal (state := state_1541680) 0
    state_1541681 state_1541692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541681
  · exact cover_1541692
#print axioms cover_1541680

def state_1541679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 44)))
theorem cover_1541679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541679 := by
  apply coveredState_split_literal (state := state_1541679) 1
    state_1541680 state_1541747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541680
  · exact cover_1541747
#print axioms cover_1541679

def state_1541621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 44)))
theorem cover_1541621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541621 := by
  apply coveredState_split_literal (state := state_1541621) 3
    state_1541622 state_1541679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541622
  · exact cover_1541679
#print axioms cover_1541621

def state_1541620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 22)))
theorem cover_1541620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541620 := by
  apply coveredState_split_literal (state := state_1541620) 4
    state_1541621 state_1541748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541621
  · exact cover_1541748
#print axioms cover_1541620

def state_1541556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
theorem cover_1541556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541556 := by
  apply coveredState_split_literal (state := state_1541556) 2
    state_1541557 state_1541620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541557
  · exact cover_1541620
#print axioms cover_1541556

def state_1541540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
theorem cover_1541540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541540 := by
  apply coveredState_split_literal (state := state_1541540) 0
    state_1541541 state_1541556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541541
  · exact cover_1541556
#print axioms cover_1541540

def state_1541539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
theorem cover_1541539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541539 := by
  apply coveredState_split_literal (state := state_1541539) 1
    state_1541540 state_1541787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541540
  · exact cover_1541787
#print axioms cover_1541539

def state_1541431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 22)))
theorem cover_1541431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541431 := by
  apply coveredState_split_literal (state := state_1541431) 3
    state_1541432 state_1541539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541432
  · exact cover_1541539
#print axioms cover_1541431

def state_1541430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 11)))
theorem cover_1541430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541430 := by
  apply coveredState_split_literal (state := state_1541430) 4
    state_1541431 state_1541794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541431
  · exact cover_1541794
#print axioms cover_1541430

def state_1541862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 44)))
theorem cover_1541862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541862 := by
  apply coveredState_split_literal (state := state_1541862) 2
    state_1541863 state_1541916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541863
  · exact cover_1541916
#print axioms cover_1541862

def state_1541852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 44)))
theorem cover_1541852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541852 := by
  apply coveredState_split_literal (state := state_1541852) 0
    state_1541853 state_1541862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541853
  · exact cover_1541862
#print axioms cover_1541852

def state_1541851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 44)))
theorem cover_1541851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541851 := by
  apply coveredState_split_literal (state := state_1541851) 1
    state_1541852 state_1541931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541852
  · exact cover_1541931
#print axioms cover_1541851

def state_1541847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 44)))
theorem cover_1541847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541847 := by
  apply coveredState_split_literal (state := state_1541847) 3
    state_1541848 state_1541851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541848
  · exact cover_1541851
#print axioms cover_1541847

def state_1541846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 22)))
theorem cover_1541846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541846 := by
  apply coveredState_split_literal (state := state_1541846) 4
    state_1541847 state_1541946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541847
  · exact cover_1541946
#print axioms cover_1541846

def state_1541845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
theorem cover_1541845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541845 := by
  apply coveredState_split_literal (state := state_1541845) 2
    state_1541846 state_1541973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541846
  · exact cover_1541973
#print axioms cover_1541845

def state_1541835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
theorem cover_1541835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541835 := by
  apply coveredState_split_literal (state := state_1541835) 0
    state_1541836 state_1541845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541836
  · exact cover_1541845
#print axioms cover_1541835

def state_1541834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
theorem cover_1541834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541834 := by
  apply coveredState_split_literal (state := state_1541834) 1
    state_1541835 state_1541990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541835
  · exact cover_1541990
#print axioms cover_1541834

def state_1541832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 22)))
theorem cover_1541832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541832 := by
  apply coveredState_split_literal (state := state_1541832) 3
    state_1541833 state_1541834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541833
  · exact cover_1541834
#print axioms cover_1541832

def state_1541831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 11)))
theorem cover_1541831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541831 := by
  apply coveredState_split_literal (state := state_1541831) 4
    state_1541832 state_1542001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541832
  · exact cover_1542001
#print axioms cover_1541831

def state_1541429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 11)))
theorem cover_1541429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541429 := by
  apply coveredState_split_literal (state := state_1541429) 2
    state_1541430 state_1541831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1541430
  · exact cover_1541831
#print axioms cover_1541429

def state_1542074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 22)))
theorem cover_1542074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542074 := by
  apply coveredState_split_literal (state := state_1542074) 4
    state_1542075 state_1542130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542075
  · exact cover_1542130
#print axioms cover_1542074

def state_1542073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 22)))
theorem cover_1542073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542073 := by
  apply coveredState_split_literal (state := state_1542073) 0
    state_1542074 state_1542151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542074
  · exact cover_1542151
#print axioms cover_1542073

def state_1542043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
theorem cover_1542043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542043 := by
  apply coveredState_split_literal (state := state_1542043) 2
    state_1542044 state_1542073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542044
  · exact cover_1542073
#print axioms cover_1542043

def state_1542042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
theorem cover_1542042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542042 := by
  apply coveredState_split_literal (state := state_1542042) 1
    state_1542043 state_1542156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542043
  · exact cover_1542156
#print axioms cover_1542042

def state_1542024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 22)))
theorem cover_1542024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542024 := by
  apply coveredState_split_literal (state := state_1542024) 3
    state_1542025 state_1542042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542025
  · exact cover_1542042
#print axioms cover_1542024

def state_1542023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 11)))
theorem cover_1542023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542023 := by
  apply coveredState_split_literal (state := state_1542023) 4
    state_1542024 state_1542173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542024
  · exact cover_1542173
#print axioms cover_1542023

def state_1542223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 44)))
theorem cover_1542223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542223 := by
  apply coveredState_split_literal (state := state_1542223) 2
    state_1542224 state_1542267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542224
  · exact cover_1542267
#print axioms cover_1542223

def state_1542222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 44)))
theorem cover_1542222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542222 := by
  apply coveredState_split_literal (state := state_1542222) 0
    state_1542223 state_1542292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542223
  · exact cover_1542292
#print axioms cover_1542222

def state_1542221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 44)))
theorem cover_1542221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542221 := by
  apply coveredState_split_literal (state := state_1542221) 1
    state_1542222 state_1542299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542222
  · exact cover_1542299
#print axioms cover_1542221
end Mub6.Numerical.CircleFullD0.Forest
