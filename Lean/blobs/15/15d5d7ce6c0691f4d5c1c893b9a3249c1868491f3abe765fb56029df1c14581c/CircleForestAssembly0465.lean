import CircleFullInterface
import CircleForestAssembly0464
import CircleForestChunk1825
import CircleForestChunk1826
import CircleForestChunk1827
import CircleForestChunk1828
import CircleForestChunk1829
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2311245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 45)))
theorem cover_2311245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311245 := by
  apply coveredState_split_literal (state := state_2311245) 2
    state_2311246 state_2311291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311246
  · exact cover_2311291
#print axioms cover_2311245

def state_2311131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_2311131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311131 := by
  apply coveredState_split_literal (state := state_2311131) 4
    state_2311132 state_2311245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311132
  · exact cover_2311245
#print axioms cover_2311131

def state_2311383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 44)))
theorem cover_2311383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311383 := by
  apply coveredState_split_literal (state := state_2311383) 0
    state_2311384 state_2311441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311384
  · exact cover_2311441
#print axioms cover_2311383

def state_2311382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 44)))
theorem cover_2311382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311382 := by
  apply coveredState_split_literal (state := state_2311382) 1
    state_2311383 state_2311458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311383
  · exact cover_2311458
#print axioms cover_2311382

def state_2311336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 28 else 44)))
theorem cover_2311336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311336 := by
  apply coveredState_split_literal (state := state_2311336) 3
    state_2311337 state_2311382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311337
  · exact cover_2311382
#print axioms cover_2311336

def state_2311488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 44)))
theorem cover_2311488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311488 := by
  apply coveredState_split_literal (state := state_2311488) 0
    state_2311489 state_2311548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311489
  · exact cover_2311548
#print axioms cover_2311488

def state_2311487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 44)))
theorem cover_2311487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311487 := by
  apply coveredState_split_literal (state := state_2311487) 1
    state_2311488 state_2311589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311488
  · exact cover_2311589
#print axioms cover_2311487

def state_2311463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 28 else 44)))
theorem cover_2311463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311463 := by
  apply coveredState_split_literal (state := state_2311463) 3
    state_2311464 state_2311487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311464
  · exact cover_2311487
#print axioms cover_2311463

def state_2311335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 44)))
theorem cover_2311335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311335 := by
  apply coveredState_split_literal (state := state_2311335) 2
    state_2311336 state_2311463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311336
  · exact cover_2311463
#print axioms cover_2311335

def state_2311622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 45)))
theorem cover_2311622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311622 := by
  apply coveredState_split_literal (state := state_2311622) 4
    state_2311623 state_2311684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311623
  · exact cover_2311684
#print axioms cover_2311622

def state_2311621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 45)))
theorem cover_2311621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311621 := by
  apply coveredState_split_literal (state := state_2311621) 0
    state_2311622 state_2311709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311622
  · exact cover_2311709
#print axioms cover_2311621

def state_2311620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 45)))
theorem cover_2311620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311620 := by
  apply coveredState_split_literal (state := state_2311620) 1
    state_2311621 state_2311724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311621
  · exact cover_2311724
#print axioms cover_2311620

def state_2311729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 45)))
theorem cover_2311729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311729 := by
  apply coveredState_split_literal (state := state_2311729) 1
    state_2311730 state_2311785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311730
  · exact cover_2311785
#print axioms cover_2311729

def state_2311619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 28 else 45)))
theorem cover_2311619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311619 := by
  apply coveredState_split_literal (state := state_2311619) 3
    state_2311620 state_2311729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311620
  · exact cover_2311729
#print axioms cover_2311619

def state_2311798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 45)))
theorem cover_2311798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311798 := by
  apply coveredState_split_literal (state := state_2311798) 0
    state_2311799 state_2311852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311799
  · exact cover_2311852
#print axioms cover_2311798

def state_2311797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 45)))
theorem cover_2311797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311797 := by
  apply coveredState_split_literal (state := state_2311797) 1
    state_2311798 state_2311879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311798
  · exact cover_2311879
#print axioms cover_2311797

def state_2311921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 45)))
theorem cover_2311921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311921 := by
  apply coveredState_split_literal (state := state_2311921) 4
    state_2311922 state_2311979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311922
  · exact cover_2311979
#print axioms cover_2311921

def state_2311895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 45)))
theorem cover_2311895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311895 := by
  apply coveredState_split_literal (state := state_2311895) 0
    state_2311896 state_2311921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311896
  · exact cover_2311921
#print axioms cover_2311895

def state_2311894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 45)))
theorem cover_2311894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311894 := by
  apply coveredState_split_literal (state := state_2311894) 1
    state_2311895 state_2311988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311895
  · exact cover_2311988
#print axioms cover_2311894

def state_2311796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 28 else 45)))
theorem cover_2311796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311796 := by
  apply coveredState_split_literal (state := state_2311796) 3
    state_2311797 state_2311894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311797
  · exact cover_2311894
#print axioms cover_2311796

def state_2311618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 45)))
theorem cover_2311618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311618 := by
  apply coveredState_split_literal (state := state_2311618) 2
    state_2311619 state_2311796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311619
  · exact cover_2311796
#print axioms cover_2311618

def state_2311334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_2311334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311334 := by
  apply coveredState_split_literal (state := state_2311334) 4
    state_2311335 state_2311618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311335
  · exact cover_2311618
#print axioms cover_2311334

def state_2311130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_2311130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311130 := by
  apply coveredState_split_literal (state := state_2311130) 0
    state_2311131 state_2311334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311131
  · exact cover_2311334
#print axioms cover_2311130

def state_2312130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 58 else 44)))
theorem cover_2312130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312130 := by
  apply coveredState_split_literal (state := state_2312130) 4
    state_2312131 state_2312148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312131
  · exact cover_2312148
#print axioms cover_2312130

def state_2312102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 58 else 44)))
theorem cover_2312102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312102 := by
  apply coveredState_split_literal (state := state_2312102) 0
    state_2312103 state_2312130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312103
  · exact cover_2312130
#print axioms cover_2312102

def state_2312101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 58 else 44)))
theorem cover_2312101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312101 := by
  apply coveredState_split_literal (state := state_2312101) 1
    state_2312102 state_2312201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312102
  · exact cover_2312201
#print axioms cover_2312101

def state_2312100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 29 else 44)))
theorem cover_2312100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312100 := by
  apply coveredState_split_literal (state := state_2312100) 3
    state_2312101 state_2312250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312101
  · exact cover_2312250
#print axioms cover_2312100

def state_2312052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 44)))
theorem cover_2312052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312052 := by
  apply coveredState_split_literal (state := state_2312052) 2
    state_2312053 state_2312100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312053
  · exact cover_2312100
#print axioms cover_2312052

def state_2312273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 45)))
theorem cover_2312273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312273 := by
  apply coveredState_split_literal (state := state_2312273) 2
    state_2312274 state_2312301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312274
  · exact cover_2312301
#print axioms cover_2312273

def state_2312051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
theorem cover_2312051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312051 := by
  apply coveredState_split_literal (state := state_2312051) 4
    state_2312052 state_2312273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312052
  · exact cover_2312273
#print axioms cover_2312051

def state_2312029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
theorem cover_2312029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312029 := by
  apply coveredState_split_literal (state := state_2312029) 0
    state_2312030 state_2312051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2312030
  · exact cover_2312051
#print axioms cover_2312029

def state_2311129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 22)))
theorem cover_2311129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311129 := by
  apply coveredState_split_literal (state := state_2311129) 3
    state_2311130 state_2312029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2311130
  · exact cover_2312029
#print axioms cover_2311129
end Mub6.Numerical.CircleFullD0.Forest
