import D0FullInterface
import D0ForestAssembly0168
import D0ForestChunk0644
import D0ForestChunk0645
import D0ForestChunk0646
import D0ForestChunk0647
import D0ForestChunk0648
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1343650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_1343650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343650 := by
  apply coveredState_split_literal (state := state_1343650) 2
    state_1343651 state_1343658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343651
  · exact cover_1343658
#print axioms cover_1343650

def state_1342392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_1342392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342392 := by
  apply coveredState_split_literal (state := state_1342392) 1
    state_1342393 state_1343650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342393
  · exact cover_1343650
#print axioms cover_1342392

def state_1342391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_1342391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342391 := by
  apply coveredState_split_literal (state := state_1342391) 4
    state_1342392 state_1343749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1342392
  · exact cover_1343749
#print axioms cover_1342391

def state_1343759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 12)))
theorem cover_1343759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343759 := by
  apply coveredState_split_literal (state := state_1343759) 0
    state_1343760 state_1343771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343760
  · exact cover_1343771
#print axioms cover_1343759

def state_1343758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 6)))
theorem cover_1343758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343758 := by
  apply coveredState_split_literal (state := state_1343758) 4
    state_1343759 state_1343834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343759
  · exact cover_1343834
#print axioms cover_1343758

def state_1343757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
theorem cover_1343757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343757 := by
  apply coveredState_split_literal (state := state_1343757) 3
    state_1343758 state_1343845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343758
  · exact cover_1343845
#print axioms cover_1343757

def state_1343862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 48)))
theorem cover_1343862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343862 := by
  apply coveredState_split_literal (state := state_1343862) 1
    state_1343863 state_1343866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343863
  · exact cover_1343866
#print axioms cover_1343862

def state_1343936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 20 else 49)))
theorem cover_1343936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343936 := by
  apply coveredState_split_literal (state := state_1343936) 3
    state_1343937 state_1344000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343937
  · exact cover_1344000
#print axioms cover_1343936

def state_1343935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 49)))
theorem cover_1343935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343935 := by
  apply coveredState_split_literal (state := state_1343935) 2
    state_1343936 state_1344001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343936
  · exact cover_1344001
#print axioms cover_1343935

def state_1343927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 49)))
theorem cover_1343927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343927 := by
  apply coveredState_split_literal (state := state_1343927) 1
    state_1343928 state_1343935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343928
  · exact cover_1343935
#print axioms cover_1343927

def state_1343861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 24)))
theorem cover_1343861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343861 := by
  apply coveredState_split_literal (state := state_1343861) 4
    state_1343862 state_1343927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343862
  · exact cover_1343927
#print axioms cover_1343861

def state_1343859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 24)))
theorem cover_1343859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343859 := by
  apply coveredState_split_literal (state := state_1343859) 0
    state_1343860 state_1343861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343860
  · exact cover_1343861
#print axioms cover_1343859

def state_1343858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 24)))
theorem cover_1343858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343858 := by
  apply coveredState_split_literal (state := state_1343858) 3
    state_1343859 state_1344044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343859
  · exact cover_1344044
#print axioms cover_1343858

def state_1343857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 12)))
theorem cover_1343857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343857 := by
  apply coveredState_split_literal (state := state_1343857) 4
    state_1343858 state_1344045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343858
  · exact cover_1344045
#print axioms cover_1343857

def state_1343856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 12)))
theorem cover_1343856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343856 := by
  apply coveredState_split_literal (state := state_1343856) 2
    state_1343857 state_1344092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343857
  · exact cover_1344092
#print axioms cover_1343856

def state_1343854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 12)))
theorem cover_1343854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343854 := by
  apply coveredState_split_literal (state := state_1343854) 1
    state_1343855 state_1343856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343855
  · exact cover_1343856
#print axioms cover_1343854

def state_1343852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 12)))
theorem cover_1343852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343852 := by
  apply coveredState_split_literal (state := state_1343852) 0
    state_1343853 state_1343854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343853
  · exact cover_1343854
#print axioms cover_1343852

def state_1343851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 6)))
theorem cover_1343851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343851 := by
  apply coveredState_split_literal (state := state_1343851) 4
    state_1343852 state_1344093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343852
  · exact cover_1344093
#print axioms cover_1343851

def state_1343850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
theorem cover_1343850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343850 := by
  apply coveredState_split_literal (state := state_1343850) 3
    state_1343851 state_1344094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343851
  · exact cover_1344094
#print axioms cover_1343850

def state_1343756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_1343756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343756 := by
  apply coveredState_split_literal (state := state_1343756) 2
    state_1343757 state_1343850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1343757
  · exact cover_1343850
#print axioms cover_1343756

def state_1344194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 48)))
theorem cover_1344194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344194 := by
  apply coveredState_split_literal (state := state_1344194) 2
    state_1344195 state_1344218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344195
  · exact cover_1344218
#print axioms cover_1344194

def state_1344305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 52) else (if j.val < 3 then 45 else (if j.val < 4 then 40 else 49)))
theorem cover_1344305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344305 := by
  apply coveredState_split_literal (state := state_1344305) 0
    state_1344306 state_1344315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344306
  · exact cover_1344315
#print axioms cover_1344305

def state_1344304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 52) else (if j.val < 3 then 45 else (if j.val < 4 then 20 else 49)))
theorem cover_1344304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344304 := by
  apply coveredState_split_literal (state := state_1344304) 3
    state_1344305 state_1344374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344305
  · exact cover_1344374
#print axioms cover_1344304

def state_1344303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 20 else 49)))
theorem cover_1344303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344303 := by
  apply coveredState_split_literal (state := state_1344303) 1
    state_1344304 state_1344383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344304
  · exact cover_1344383
#print axioms cover_1344303

def state_1344269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 49)))
theorem cover_1344269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344269 := by
  apply coveredState_split_literal (state := state_1344269) 2
    state_1344270 state_1344303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344270
  · exact cover_1344303
#print axioms cover_1344269

def state_1344193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 24)))
theorem cover_1344193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344193 := by
  apply coveredState_split_literal (state := state_1344193) 4
    state_1344194 state_1344269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344194
  · exact cover_1344269
#print axioms cover_1344193

def state_1344177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 24)))
theorem cover_1344177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344177 := by
  apply coveredState_split_literal (state := state_1344177) 0
    state_1344178 state_1344193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344178
  · exact cover_1344193
#print axioms cover_1344177

def state_1344176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 24)))
theorem cover_1344176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344176 := by
  apply coveredState_split_literal (state := state_1344176) 3
    state_1344177 state_1344404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344177
  · exact cover_1344404
#print axioms cover_1344176

def state_1344175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 24)))
theorem cover_1344175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344175 := by
  apply coveredState_split_literal (state := state_1344175) 1
    state_1344176 state_1344427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344176
  · exact cover_1344427
#print axioms cover_1344175

def state_1344466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 25)))
theorem cover_1344466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344466 := by
  apply coveredState_split_literal (state := state_1344466) 1
    state_1344467 state_1344522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344467
  · exact cover_1344522
#print axioms cover_1344466

def state_1344174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 12)))
theorem cover_1344174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344174 := by
  apply coveredState_split_literal (state := state_1344174) 4
    state_1344175 state_1344466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344175
  · exact cover_1344466
#print axioms cover_1344174

def state_1344533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 12)))
theorem cover_1344533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344533 := by
  apply coveredState_split_literal (state := state_1344533) 4
    state_1344534 state_1344577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1344534
  · exact cover_1344577
#print axioms cover_1344533
end Mub6.Numerical.CircleFullD0.Forest
