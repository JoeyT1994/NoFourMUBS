import CircleFullInterface
import CircleForestAssembly0431
import CircleForestChunk1690
import CircleForestChunk1691
import CircleForestChunk1692
import CircleForestChunk1693
import CircleForestChunk1694
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2279031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 59)))
theorem cover_2279031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279031 := by
  apply coveredState_split_literal (state := state_2279031) 1
    state_2279032 state_2279091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279032
  · exact cover_2279091
#print axioms cover_2279031

def state_2278997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 44 else 59)))
theorem cover_2278997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278997 := by
  apply coveredState_split_literal (state := state_2278997) 3
    state_2278998 state_2279031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278998
  · exact cover_2279031
#print axioms cover_2278997

def state_2278965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
theorem cover_2278965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278965 := by
  apply coveredState_split_literal (state := state_2278965) 2
    state_2278966 state_2278997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278966
  · exact cover_2278997
#print axioms cover_2278965

def state_2278933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
theorem cover_2278933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278933 := by
  apply coveredState_split_literal (state := state_2278933) 0
    state_2278934 state_2278965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278934
  · exact cover_2278965
#print axioms cover_2278933

def state_2278881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
theorem cover_2278881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278881 := by
  apply coveredState_split_literal (state := state_2278881) 4
    state_2278882 state_2278933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278882
  · exact cover_2278933
#print axioms cover_2278881

def state_2278880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
theorem cover_2278880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278880 := by
  apply coveredState_split_literal (state := state_2278880) 1
    state_2278881 state_2279108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278881
  · exact cover_2279108
#print axioms cover_2278880

def state_2279128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 29)))
theorem cover_2279128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279128 := by
  apply coveredState_split_literal (state := state_2279128) 4
    state_2279129 state_2279176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279129
  · exact cover_2279176
#print axioms cover_2279128

def state_2279127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 29)))
theorem cover_2279127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279127 := by
  apply coveredState_split_literal (state := state_2279127) 1
    state_2279128 state_2279217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279128
  · exact cover_2279217
#print axioms cover_2279127

def state_2278879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 29)))
theorem cover_2278879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278879 := by
  apply coveredState_split_literal (state := state_2278879) 3
    state_2278880 state_2279127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278880
  · exact cover_2279127
#print axioms cover_2278879

def state_2279236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 29)))
theorem cover_2279236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279236 := by
  apply coveredState_split_literal (state := state_2279236) 3
    state_2279237 state_2279286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279237
  · exact cover_2279286
#print axioms cover_2279236

def state_2278878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 29)))
theorem cover_2278878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278878 := by
  apply coveredState_split_literal (state := state_2278878) 2
    state_2278879 state_2279236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278879
  · exact cover_2279236
#print axioms cover_2278878

def state_2278850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2278850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278850 := by
  apply coveredState_split_literal (state := state_2278850) 4
    state_2278851 state_2278878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278851
  · exact cover_2278878
#print axioms cover_2278850

def state_2278849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2278849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278849 := by
  apply coveredState_split_literal (state := state_2278849) 1
    state_2278850 state_2279309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278850
  · exact cover_2279309
#print axioms cover_2278849

def state_2279350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
theorem cover_2279350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279350 := by
  apply coveredState_split_literal (state := state_2279350) 1
    state_2279351 state_2279412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279351
  · exact cover_2279412
#print axioms cover_2279350

def state_2279349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
theorem cover_2279349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279349 := by
  apply coveredState_split_literal (state := state_2279349) 0
    state_2279350 state_2279419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279350
  · exact cover_2279419
#print axioms cover_2279349

def state_2279348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 29)))
theorem cover_2279348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279348 := by
  apply coveredState_split_literal (state := state_2279348) 3
    state_2279349 state_2279430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279349
  · exact cover_2279430
#print axioms cover_2279348

def state_2279347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 29)))
theorem cover_2279347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279347 := by
  apply coveredState_split_literal (state := state_2279347) 2
    state_2279348 state_2279475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279348
  · exact cover_2279475
#print axioms cover_2279347

def state_2279327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2279327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279327 := by
  apply coveredState_split_literal (state := state_2279327) 4
    state_2279328 state_2279347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279328
  · exact cover_2279347
#print axioms cover_2279327

def state_2279326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2279326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279326 := by
  apply coveredState_split_literal (state := state_2279326) 1
    state_2279327 state_2279516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279327
  · exact cover_2279516
#print axioms cover_2279326

def state_2278848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
theorem cover_2278848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278848 := by
  apply coveredState_split_literal (state := state_2278848) 0
    state_2278849 state_2279326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278849
  · exact cover_2279326
#print axioms cover_2278848

def state_2278847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 14)))
theorem cover_2278847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278847 := by
  apply coveredState_split_literal (state := state_2278847) 3
    state_2278848 state_2279529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278848
  · exact cover_2279529
#print axioms cover_2278847

def state_2278641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2278641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278641 := by
  apply coveredState_split_literal (state := state_2278641) 2
    state_2278642 state_2278847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2278642
  · exact cover_2278847
#print axioms cover_2278641

def state_2279594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 15)))
theorem cover_2279594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279594 := by
  apply coveredState_split_literal (state := state_2279594) 0
    state_2279595 state_2279626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279595
  · exact cover_2279626
#print axioms cover_2279594

def state_2279593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 15)))
theorem cover_2279593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279593 := by
  apply coveredState_split_literal (state := state_2279593) 3
    state_2279594 state_2279669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279594
  · exact cover_2279669
#print axioms cover_2279593

def state_2279736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 83 else 112) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
theorem cover_2279736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279736 := by
  apply coveredState_split_literal (state := state_2279736) 4
    state_2279737 state_2279766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279737
  · exact cover_2279766
#print axioms cover_2279736

def state_2279718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 112) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
theorem cover_2279718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279718 := by
  apply coveredState_split_literal (state := state_2279718) 0
    state_2279719 state_2279736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279719
  · exact cover_2279736
#print axioms cover_2279718

def state_2279717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
theorem cover_2279717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279717 := by
  apply coveredState_split_literal (state := state_2279717) 1
    state_2279718 state_2279807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279718
  · exact cover_2279807
#print axioms cover_2279717

def state_2279826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 60)))
theorem cover_2279826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279826 := by
  apply coveredState_split_literal (state := state_2279826) 1
    state_2279827 state_2279872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279827
  · exact cover_2279872
#print axioms cover_2279826

def state_2279716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 44 else 60)))
theorem cover_2279716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279716 := by
  apply coveredState_split_literal (state := state_2279716) 3
    state_2279717 state_2279826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279717
  · exact cover_2279826
#print axioms cover_2279716

def state_2279688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 60)))
theorem cover_2279688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279688 := by
  apply coveredState_split_literal (state := state_2279688) 2
    state_2279689 state_2279716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279689
  · exact cover_2279716
#print axioms cover_2279688

def state_2279687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2279687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279687 := by
  apply coveredState_split_literal (state := state_2279687) 4
    state_2279688 state_2279899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279688
  · exact cover_2279899
#print axioms cover_2279687

def state_2279679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
theorem cover_2279679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279679 := by
  apply coveredState_split_literal (state := state_2279679) 0
    state_2279680 state_2279687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279680
  · exact cover_2279687
#print axioms cover_2279679
end Mub6.Numerical.CircleFullD0.Forest
