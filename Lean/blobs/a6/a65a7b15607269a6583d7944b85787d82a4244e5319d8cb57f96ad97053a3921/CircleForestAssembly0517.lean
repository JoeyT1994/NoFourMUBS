import CircleFullInterface
import CircleForestAssembly0515
import CircleForestAssembly0516
import CircleForestChunk2025
import CircleForestChunk2035
import CircleForestChunk2036
import CircleForestChunk2037
import CircleForestChunk2038
import CircleForestChunk2039
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2566940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2566940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566940 := by
  apply coveredState_split_literal (state := state_2566940) 1
    state_2566941 state_2568554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566941
  · exact cover_2568554
#print axioms cover_2566940

def state_2568966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 47)))
theorem cover_2568966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568966 := by
  apply coveredState_split_literal (state := state_2568966) 4
    state_2568967 state_2568980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568967
  · exact cover_2568980
#print axioms cover_2568966

def state_2568965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 47)))
theorem cover_2568965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568965 := by
  apply coveredState_split_literal (state := state_2568965) 1
    state_2568966 state_2569031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568966
  · exact cover_2569031
#print axioms cover_2568965

def state_2568964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 29 else 47)))
theorem cover_2568964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568964 := by
  apply coveredState_split_literal (state := state_2568964) 3
    state_2568965 state_2569062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568965
  · exact cover_2569062
#print axioms cover_2568964

def state_2568963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 47)))
theorem cover_2568963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568963 := by
  apply coveredState_split_literal (state := state_2568963) 2
    state_2568964 state_2569063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568964
  · exact cover_2569063
#print axioms cover_2568963

def state_2568962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 47)))
theorem cover_2568962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568962 := by
  apply coveredState_split_literal (state := state_2568962) 0
    state_2568963 state_2569100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568963
  · exact cover_2569100
#print axioms cover_2568962

def state_2568938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
theorem cover_2568938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568938 := by
  apply coveredState_split_literal (state := state_2568938) 4
    state_2568939 state_2568962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568939
  · exact cover_2568962
#print axioms cover_2568938

def state_2568937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
theorem cover_2568937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568937 := by
  apply coveredState_split_literal (state := state_2568937) 1
    state_2568938 state_2569125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2568938
  · exact cover_2569125
#print axioms cover_2568937

def state_2566939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 23)))
theorem cover_2566939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566939 := by
  apply coveredState_split_literal (state := state_2566939) 3
    state_2566940 state_2568937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566940
  · exact cover_2568937
#print axioms cover_2566939

def state_2566609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_2566609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566609 := by
  apply coveredState_split_literal (state := state_2566609) 2
    state_2566610 state_2566939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566610
  · exact cover_2566939
#print axioms cover_2566609

def state_2566557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2566557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566557 := by
  apply coveredState_split_literal (state := state_2566557) 4
    state_2566558 state_2566609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566558
  · exact cover_2566609
#print axioms cover_2566557

def state_2566556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2566556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566556 := by
  apply coveredState_split_literal (state := state_2566556) 1
    state_2566557 state_2569160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566557
  · exact cover_2569160
#print axioms cover_2566556

def state_2566555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2566555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566555 := by
  apply coveredState_split_literal (state := state_2566555) 0
    state_2566556 state_2569215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566556
  · exact cover_2569215
#print axioms cover_2566555

def state_2566554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
theorem cover_2566554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566554 := by
  apply coveredState_split_literal (state := state_2566554) 3
    state_2566555 state_2569252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2566555
  · exact cover_2569252
#print axioms cover_2566554

def state_2569339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 23)))
theorem cover_2569339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569339 := by
  apply coveredState_split_literal (state := state_2569339) 4
    state_2569340 state_2569379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569340
  · exact cover_2569379
#print axioms cover_2569339

def state_2569427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 56 else 46)))
theorem cover_2569427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569427 := by
  apply coveredState_split_literal (state := state_2569427) 4
    state_2569428 state_2569445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569428
  · exact cover_2569445
#print axioms cover_2569427

def state_2569426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 56 else 46)))
theorem cover_2569426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569426 := by
  apply coveredState_split_literal (state := state_2569426) 1
    state_2569427 state_2569506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569427
  · exact cover_2569506
#print axioms cover_2569426

def state_2569561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 56 else 46)))
theorem cover_2569561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569561 := by
  apply coveredState_split_literal (state := state_2569561) 4
    state_2569562 state_2569585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569562
  · exact cover_2569585
#print axioms cover_2569561

def state_2569541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 56 else 46)))
theorem cover_2569541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569541 := by
  apply coveredState_split_literal (state := state_2569541) 1
    state_2569542 state_2569561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569542
  · exact cover_2569561
#print axioms cover_2569541

def state_2569425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 56 else 46)))
theorem cover_2569425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569425 := by
  apply coveredState_split_literal (state := state_2569425) 2
    state_2569426 state_2569541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569426
  · exact cover_2569541
#print axioms cover_2569425

def state_2569424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 46)))
theorem cover_2569424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569424 := by
  apply coveredState_split_literal (state := state_2569424) 3
    state_2569425 state_2569630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569425
  · exact cover_2569630
#print axioms cover_2569424

def state_2569423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 46)))
theorem cover_2569423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569423 := by
  apply coveredState_split_literal (state := state_2569423) 0
    state_2569424 state_2569677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569424
  · exact cover_2569677
#print axioms cover_2569423

def state_2569692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 56 else 94)))
theorem cover_2569692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569692 := by
  apply coveredState_split_literal (state := state_2569692) 1
    state_2569693 state_2569732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569693
  · exact cover_2569732
#print axioms cover_2569692

def state_2569691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 56 else 47)))
theorem cover_2569691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569691 := by
  apply coveredState_split_literal (state := state_2569691) 4
    state_2569692 state_2569789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569692
  · exact cover_2569789
#print axioms cover_2569691

def state_2569690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 56 else 47)))
theorem cover_2569690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569690 := by
  apply coveredState_split_literal (state := state_2569690) 2
    state_2569691 state_2569808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569691
  · exact cover_2569808
#print axioms cover_2569690

def state_2569840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 57 else 47)))
theorem cover_2569840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569840 := by
  apply coveredState_split_literal (state := state_2569840) 4
    state_2569841 state_2569896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569841
  · exact cover_2569896
#print axioms cover_2569840

def state_2569839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 57 else 47)))
theorem cover_2569839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569839 := by
  apply coveredState_split_literal (state := state_2569839) 2
    state_2569840 state_2569915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569840
  · exact cover_2569915
#print axioms cover_2569839

def state_2569689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
theorem cover_2569689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569689 := by
  apply coveredState_split_literal (state := state_2569689) 3
    state_2569690 state_2569839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569690
  · exact cover_2569839
#print axioms cover_2569689

def state_2569688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
theorem cover_2569688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569688 := by
  apply coveredState_split_literal (state := state_2569688) 0
    state_2569689 state_2569930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569689
  · exact cover_2569930
#print axioms cover_2569688

def state_2569422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 23)))
theorem cover_2569422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569422 := by
  apply coveredState_split_literal (state := state_2569422) 4
    state_2569423 state_2569688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569423
  · exact cover_2569688
#print axioms cover_2569422

def state_2569338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 23)))
theorem cover_2569338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569338 := by
  apply coveredState_split_literal (state := state_2569338) 1
    state_2569339 state_2569422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569339
  · exact cover_2569422
#print axioms cover_2569338

def state_2569337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 28 else 23)))
theorem cover_2569337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569337 := by
  apply coveredState_split_literal (state := state_2569337) 2
    state_2569338 state_2569963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2569338
  · exact cover_2569963
#print axioms cover_2569337
end Mub6.Numerical.CircleFullD0.Forest
