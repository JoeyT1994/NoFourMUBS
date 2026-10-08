import CircleFullInterface
import CircleForestAssembly0147
import CircleForestChunk0577
import CircleForestChunk0578
import CircleForestChunk0579
import CircleForestChunk0580
import CircleForestChunk0581
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_377413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_377413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377413 := by
  apply coveredState_split_literal (state := state_377413) 2
    state_377414 state_377437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377414
  · exact cover_377437
#print axioms cover_377413

def state_377624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_377624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377624 := by
  apply coveredState_split_literal (state := state_377624) 2
    state_377625 state_377682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377625
  · exact cover_377682
#print axioms cover_377624

def state_377572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_377572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377572 := by
  apply coveredState_split_literal (state := state_377572) 1
    state_377573 state_377624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377573
  · exact cover_377624
#print axioms cover_377572

def state_377571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_377571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377571 := by
  apply coveredState_split_literal (state := state_377571) 0
    state_377572 state_377707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377572
  · exact cover_377707
#print axioms cover_377571

def state_377559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_377559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377559 := by
  apply coveredState_split_literal (state := state_377559) 4
    state_377560 state_377571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377560
  · exact cover_377571
#print axioms cover_377559

def state_377558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_377558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377558 := by
  apply coveredState_split_literal (state := state_377558) 3
    state_377559 state_377738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377559
  · exact cover_377738
#print axioms cover_377558

def state_377516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_377516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377516 := by
  apply coveredState_split_literal (state := state_377516) 2
    state_377517 state_377558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377517
  · exact cover_377558
#print axioms cover_377516

def state_377412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_377412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377412 := by
  apply coveredState_split_literal (state := state_377412) 1
    state_377413 state_377516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377413
  · exact cover_377516
#print axioms cover_377412

def state_377178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_377178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377178 := by
  apply coveredState_split_literal (state := state_377178) 0
    state_377179 state_377412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377179
  · exact cover_377412
#print axioms cover_377178

def state_377757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_377757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377757 := by
  apply coveredState_split_literal (state := state_377757) 4
    state_377758 state_377819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377758
  · exact cover_377819
#print axioms cover_377757

def state_377756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_377756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377756 := by
  apply coveredState_split_literal (state := state_377756) 3
    state_377757 state_377824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377757
  · exact cover_377824
#print axioms cover_377756

def state_377755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_377755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377755 := by
  apply coveredState_split_literal (state := state_377755) 4
    state_377756 state_377839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377756
  · exact cover_377839
#print axioms cover_377755

def state_377754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_377754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377754 := by
  apply coveredState_split_literal (state := state_377754) 3
    state_377755 state_377840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377755
  · exact cover_377840
#print axioms cover_377754

def state_377753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_377753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377753 := by
  apply coveredState_split_literal (state := state_377753) 2
    state_377754 state_377843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377754
  · exact cover_377843
#print axioms cover_377753

def state_377891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_377891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377891 := by
  apply coveredState_split_literal (state := state_377891) 1
    state_377892 state_377911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377892
  · exact cover_377911
#print axioms cover_377891

def state_377890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_377890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377890 := by
  apply coveredState_split_literal (state := state_377890) 4
    state_377891 state_377956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377891
  · exact cover_377956
#print axioms cover_377890

def state_377889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_377889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377889 := by
  apply coveredState_split_literal (state := state_377889) 3
    state_377890 state_377967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377890
  · exact cover_377967
#print axioms cover_377889

def state_377888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_377888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377888 := by
  apply coveredState_split_literal (state := state_377888) 2
    state_377889 state_377968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377889
  · exact cover_377968
#print axioms cover_377888

def state_377752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_377752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377752 := by
  apply coveredState_split_literal (state := state_377752) 1
    state_377753 state_377888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377753
  · exact cover_377888
#print axioms cover_377752

def state_378026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_378026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378026 := by
  apply coveredState_split_literal (state := state_378026) 1
    state_378027 state_378078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378027
  · exact cover_378078
#print axioms cover_378026

def state_378025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_378025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378025 := by
  apply coveredState_split_literal (state := state_378025) 4
    state_378026 state_378093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378026
  · exact cover_378093
#print axioms cover_378025

def state_378024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_378024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378024 := by
  apply coveredState_split_literal (state := state_378024) 3
    state_378025 state_378104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378025
  · exact cover_378104
#print axioms cover_378024

def state_378023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_378023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378023 := by
  apply coveredState_split_literal (state := state_378023) 0
    state_378024 state_378105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378024
  · exact cover_378105
#print axioms cover_378023

def state_378022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_378022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378022 := by
  apply coveredState_split_literal (state := state_378022) 4
    state_378023 state_378134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378023
  · exact cover_378134
#print axioms cover_378022

def state_378021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_378021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378021 := by
  apply coveredState_split_literal (state := state_378021) 3
    state_378022 state_378175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378022
  · exact cover_378175
#print axioms cover_378021

def state_378180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_378180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378180 := by
  apply coveredState_split_literal (state := state_378180) 3
    state_378181 state_378226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378181
  · exact cover_378226
#print axioms cover_378180

def state_378179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_378179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378179 := by
  apply coveredState_split_literal (state := state_378179) 2
    state_378180 state_378267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378180
  · exact cover_378267
#print axioms cover_378179

def state_378178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_378178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378178 := by
  apply coveredState_split_literal (state := state_378178) 0
    state_378179 state_378288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378179
  · exact cover_378288
#print axioms cover_378178

def state_378177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_378177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378177 := by
  apply coveredState_split_literal (state := state_378177) 4
    state_378178 state_378337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378178
  · exact cover_378337
#print axioms cover_378177

def state_378176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_378176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378176 := by
  apply coveredState_split_literal (state := state_378176) 3
    state_378177 state_378364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378177
  · exact cover_378364
#print axioms cover_378176

def state_378020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_378020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378020 := by
  apply coveredState_split_literal (state := state_378020) 2
    state_378021 state_378176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378021
  · exact cover_378176
#print axioms cover_378020

def state_378485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
theorem cover_378485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_378485 := by
  apply coveredState_split_literal (state := state_378485) 3
    state_378486 state_378545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_378486
  · exact cover_378545
#print axioms cover_378485
end Mub6.Numerical.CircleFullPrototype.Forest
