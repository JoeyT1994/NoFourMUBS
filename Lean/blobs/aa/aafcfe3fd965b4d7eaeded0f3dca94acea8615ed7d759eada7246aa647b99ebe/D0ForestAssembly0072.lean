import D0FullInterface
import D0ForestAssembly0070
import D0ForestAssembly0071
import D0ForestChunk0285
import D0ForestChunk0288
import D0ForestChunk0289
import D0ForestChunk0290
import D0ForestChunk0291
import D0ForestChunk0292
import D0ForestChunk0293
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1006640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_1006640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006640 := by
  apply coveredState_split_literal (state := state_1006640) 2
    state_1006641 state_1006642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006641
  · exact cover_1006642
#print axioms cover_1006640

def state_1005934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_1005934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005934 := by
  apply coveredState_split_literal (state := state_1005934) 4
    state_1005935 state_1006640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005935
  · exact cover_1006640
#print axioms cover_1005934

def state_1005910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_1005910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005910 := by
  apply coveredState_split_literal (state := state_1005910) 1
    state_1005911 state_1005934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005911
  · exact cover_1005934
#print axioms cover_1005910

def state_1005858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_1005858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005858 := by
  apply coveredState_split_literal (state := state_1005858) 0
    state_1005859 state_1005910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005859
  · exact cover_1005910
#print axioms cover_1005858

def state_1005784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_1005784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005784 := by
  apply coveredState_split_literal (state := state_1005784) 4
    state_1005785 state_1005858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005785
  · exact cover_1005858
#print axioms cover_1005784

def state_980304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_980304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980304 := by
  apply coveredState_split_literal (state := state_980304) 3
    state_980305 state_1005784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980305
  · exact cover_1005784
#print axioms cover_980304

def state_1006910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 10)))
theorem cover_1006910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006910 := by
  apply coveredState_split_literal (state := state_1006910) 0
    state_1006911 state_1006956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006911
  · exact cover_1006956
#print axioms cover_1006910

def state_1006909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
theorem cover_1006909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006909 := by
  apply coveredState_split_literal (state := state_1006909) 4
    state_1006910 state_1006979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006910
  · exact cover_1006979
#print axioms cover_1006909

def state_1006901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_1006901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006901 := by
  apply coveredState_split_literal (state := state_1006901) 3
    state_1006902 state_1006909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006902
  · exact cover_1006909
#print axioms cover_1006901

def state_1006900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_1006900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006900 := by
  apply coveredState_split_literal (state := state_1006900) 2
    state_1006901 state_1007010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006901
  · exact cover_1007010
#print axioms cover_1006900

def state_1006878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_1006878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006878 := by
  apply coveredState_split_literal (state := state_1006878) 1
    state_1006879 state_1006900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006879
  · exact cover_1006900
#print axioms cover_1006878

def state_1006850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_1006850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006850 := by
  apply coveredState_split_literal (state := state_1006850) 0
    state_1006851 state_1006878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006851
  · exact cover_1006878
#print axioms cover_1006850

def state_1006800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_1006800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006800 := by
  apply coveredState_split_literal (state := state_1006800) 4
    state_1006801 state_1006850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006801
  · exact cover_1006850
#print axioms cover_1006800

def state_1007082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1007082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007082 := by
  apply coveredState_split_literal (state := state_1007082) 1
    state_1007083 state_1007094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007083
  · exact cover_1007094
#print axioms cover_1007082

def state_1007233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 21)))
theorem cover_1007233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007233 := by
  apply coveredState_split_literal (state := state_1007233) 0
    state_1007234 state_1007253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007234
  · exact cover_1007253
#print axioms cover_1007233

def state_1007306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_1007306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007306 := by
  apply coveredState_split_literal (state := state_1007306) 0
    state_1007307 state_1007322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007307
  · exact cover_1007322
#print axioms cover_1007306

def state_1007232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 21)))
theorem cover_1007232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007232 := by
  apply coveredState_split_literal (state := state_1007232) 3
    state_1007233 state_1007306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007233
  · exact cover_1007306
#print axioms cover_1007232

def state_1007202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 10)))
theorem cover_1007202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007202 := by
  apply coveredState_split_literal (state := state_1007202) 4
    state_1007203 state_1007232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007203
  · exact cover_1007232
#print axioms cover_1007202

def state_1007201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_1007201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007201 := by
  apply coveredState_split_literal (state := state_1007201) 2
    state_1007202 state_1007373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007202
  · exact cover_1007373
#print axioms cover_1007201

def state_1007179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_1007179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007179 := by
  apply coveredState_split_literal (state := state_1007179) 1
    state_1007180 state_1007201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007180
  · exact cover_1007201
#print axioms cover_1007179

def state_1007503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 43)))
theorem cover_1007503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007503 := by
  apply coveredState_split_literal (state := state_1007503) 1
    state_1007504 state_1007511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007504
  · exact cover_1007511
#print axioms cover_1007503

def state_1007489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 43)))
theorem cover_1007489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007489 := by
  apply coveredState_split_literal (state := state_1007489) 3
    state_1007490 state_1007503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007490
  · exact cover_1007503
#print axioms cover_1007489

def state_1007459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 21)))
theorem cover_1007459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007459 := by
  apply coveredState_split_literal (state := state_1007459) 4
    state_1007460 state_1007489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007460
  · exact cover_1007489
#print axioms cover_1007459

def state_1007572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 21)))
theorem cover_1007572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007572 := by
  apply coveredState_split_literal (state := state_1007572) 4
    state_1007573 state_1007586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007573
  · exact cover_1007586
#print axioms cover_1007572

def state_1007458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 21)))
theorem cover_1007458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007458 := by
  apply coveredState_split_literal (state := state_1007458) 0
    state_1007459 state_1007572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007459
  · exact cover_1007572
#print axioms cover_1007458

def state_1007694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 43)))
theorem cover_1007694 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007694 := by
  apply coveredState_split_literal (state := state_1007694) 0
    state_1007695 state_1007718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007695
  · exact cover_1007718
#print axioms cover_1007694

def state_1007693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 43)))
theorem cover_1007693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007693 := by
  apply coveredState_split_literal (state := state_1007693) 2
    state_1007694 state_1007769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007694
  · exact cover_1007769
#print axioms cover_1007693

def state_1007687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 43)))
theorem cover_1007687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007687 := by
  apply coveredState_split_literal (state := state_1007687) 1
    state_1007688 state_1007693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007688
  · exact cover_1007693
#print axioms cover_1007687

def state_1007686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 43)))
theorem cover_1007686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007686 := by
  apply coveredState_split_literal (state := state_1007686) 3
    state_1007687 state_1007798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007687
  · exact cover_1007798
#print axioms cover_1007686

def state_1007638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_1007638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007638 := by
  apply coveredState_split_literal (state := state_1007638) 4
    state_1007639 state_1007686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007639
  · exact cover_1007686
#print axioms cover_1007638

def state_1007851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_1007851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007851 := by
  apply coveredState_split_literal (state := state_1007851) 4
    state_1007852 state_1007869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007852
  · exact cover_1007869
#print axioms cover_1007851

def state_1007637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 21)))
theorem cover_1007637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007637 := by
  apply coveredState_split_literal (state := state_1007637) 0
    state_1007638 state_1007851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007638
  · exact cover_1007851
#print axioms cover_1007637
end Mub6.Numerical.CircleFullD0.Forest
