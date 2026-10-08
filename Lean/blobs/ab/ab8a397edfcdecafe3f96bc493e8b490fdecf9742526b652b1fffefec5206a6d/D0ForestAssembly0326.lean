import D0FullInterface
import D0ForestAssembly0325
import D0ForestChunk1262
import D0ForestChunk1263
import D0ForestChunk1264
import D0ForestChunk1265
import D0ForestChunk1266
import D0ForestChunk1267
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1603266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1603266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603266 := by
  apply coveredState_split_literal (state := state_1603266) 2
    state_1603267 state_1603550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603267
  · exact cover_1603550
#print axioms cover_1603266

def state_1603632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 117 else 100)))
theorem cover_1603632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603632 := by
  apply coveredState_split_literal (state := state_1603632) 1
    state_1603633 state_1603690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603633
  · exact cover_1603690
#print axioms cover_1603632

def state_1603624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 58 else 100)))
theorem cover_1603624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603624 := by
  apply coveredState_split_literal (state := state_1603624) 3
    state_1603625 state_1603632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603625
  · exact cover_1603632
#print axioms cover_1603624

def state_1603623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 100)))
theorem cover_1603623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603623 := by
  apply coveredState_split_literal (state := state_1603623) 2
    state_1603624 state_1603715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603624
  · exact cover_1603715
#print axioms cover_1603623

def state_1603622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 100)))
theorem cover_1603622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603622 := by
  apply coveredState_split_literal (state := state_1603622) 0
    state_1603623 state_1603740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603623
  · exact cover_1603740
#print axioms cover_1603622

def state_1603621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 50)))
theorem cover_1603621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603621 := by
  apply coveredState_split_literal (state := state_1603621) 4
    state_1603622 state_1603751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603622
  · exact cover_1603751
#print axioms cover_1603621

def state_1603569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 50)))
theorem cover_1603569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603569 := by
  apply coveredState_split_literal (state := state_1603569) 1
    state_1603570 state_1603621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603570
  · exact cover_1603621
#print axioms cover_1603569

def state_1603851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 101)))
theorem cover_1603851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603851 := by
  apply coveredState_split_literal (state := state_1603851) 0
    state_1603852 state_1603911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603852
  · exact cover_1603911
#print axioms cover_1603851

def state_1603809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 50)))
theorem cover_1603809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603809 := by
  apply coveredState_split_literal (state := state_1603809) 4
    state_1603810 state_1603851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603810
  · exact cover_1603851
#print axioms cover_1603809

def state_1603921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 118 else 100)))
theorem cover_1603921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603921 := by
  apply coveredState_split_literal (state := state_1603921) 4
    state_1603922 state_1603957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603922
  · exact cover_1603957
#print axioms cover_1603921

def state_1603920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 118 else 100)))
theorem cover_1603920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603920 := by
  apply coveredState_split_literal (state := state_1603920) 1
    state_1603921 state_1604002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603921
  · exact cover_1604002
#print axioms cover_1603920

def state_1604057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 119 else 100)))
theorem cover_1604057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604057 := by
  apply coveredState_split_literal (state := state_1604057) 1
    state_1604058 state_1604111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604058
  · exact cover_1604111
#print axioms cover_1604057

def state_1603919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 59 else 100)))
theorem cover_1603919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603919 := by
  apply coveredState_split_literal (state := state_1603919) 3
    state_1603920 state_1604057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603920
  · exact cover_1604057
#print axioms cover_1603919

def state_1603918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 100)))
theorem cover_1603918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603918 := by
  apply coveredState_split_literal (state := state_1603918) 2
    state_1603919 state_1604134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603919
  · exact cover_1604134
#print axioms cover_1603918

def state_1603917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 100)))
theorem cover_1603917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603917 := by
  apply coveredState_split_literal (state := state_1603917) 0
    state_1603918 state_1604193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603918
  · exact cover_1604193
#print axioms cover_1603917

def state_1604247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 101)))
theorem cover_1604247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604247 := by
  apply coveredState_split_literal (state := state_1604247) 2
    state_1604248 state_1604303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604248
  · exact cover_1604303
#print axioms cover_1604247

def state_1604246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 101)))
theorem cover_1604246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604246 := by
  apply coveredState_split_literal (state := state_1604246) 0
    state_1604247 state_1604336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604247
  · exact cover_1604336
#print axioms cover_1604246

def state_1603916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 50)))
theorem cover_1603916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603916 := by
  apply coveredState_split_literal (state := state_1603916) 4
    state_1603917 state_1604246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603917
  · exact cover_1604246
#print axioms cover_1603916

def state_1603808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 50)))
theorem cover_1603808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603808 := by
  apply coveredState_split_literal (state := state_1603808) 1
    state_1603809 state_1603916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603809
  · exact cover_1603916
#print axioms cover_1603808

def state_1603568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 50)))
theorem cover_1603568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603568 := by
  apply coveredState_split_literal (state := state_1603568) 3
    state_1603569 state_1603808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603569
  · exact cover_1603808
#print axioms cover_1603568

def state_1603567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1603567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603567 := by
  apply coveredState_split_literal (state := state_1603567) 2
    state_1603568 state_1604367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603568
  · exact cover_1604367
#print axioms cover_1603567

def state_1603265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1603265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603265 := by
  apply coveredState_split_literal (state := state_1603265) 0
    state_1603266 state_1603567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603266
  · exact cover_1603567
#print axioms cover_1603265

def state_1604463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 51)))
theorem cover_1604463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604463 := by
  apply coveredState_split_literal (state := state_1604463) 3
    state_1604464 state_1604491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604464
  · exact cover_1604491
#print axioms cover_1604463

def state_1604462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 51)))
theorem cover_1604462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604462 := by
  apply coveredState_split_literal (state := state_1604462) 2
    state_1604463 state_1604546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604463
  · exact cover_1604546
#print axioms cover_1604462

def state_1604414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 51)))
theorem cover_1604414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604414 := by
  apply coveredState_split_literal (state := state_1604414) 0
    state_1604415 state_1604462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604415
  · exact cover_1604462
#print axioms cover_1604414

def state_1603264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
theorem cover_1603264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603264 := by
  apply coveredState_split_literal (state := state_1603264) 4
    state_1603265 state_1604414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603265
  · exact cover_1604414
#print axioms cover_1603264

def state_1603072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
theorem cover_1603072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603072 := by
  apply coveredState_split_literal (state := state_1603072) 3
    state_1603073 state_1603264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603073
  · exact cover_1603264
#print axioms cover_1603072

def state_1603071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1603071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603071 := by
  apply coveredState_split_literal (state := state_1603071) 2
    state_1603072 state_1604565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603072
  · exact cover_1604565
#print axioms cover_1603071

def state_1604581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 50)))
theorem cover_1604581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604581 := by
  apply coveredState_split_literal (state := state_1604581) 0
    state_1604582 state_1604633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604582
  · exact cover_1604633
#print axioms cover_1604581

def state_1604580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 25)))
theorem cover_1604580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604580 := by
  apply coveredState_split_literal (state := state_1604580) 4
    state_1604581 state_1604658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604581
  · exact cover_1604658
#print axioms cover_1604580

def state_1604678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1604678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604678 := by
  apply coveredState_split_literal (state := state_1604678) 2
    state_1604679 state_1604730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604679
  · exact cover_1604730
#print axioms cover_1604678

def state_1604677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1604677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604677 := by
  apply coveredState_split_literal (state := state_1604677) 1
    state_1604678 state_1604747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1604678
  · exact cover_1604747
#print axioms cover_1604677
end Mub6.Numerical.CircleFullD0.Forest
