import D0FullInterface
import D0ForestAssembly0222
import D0ForestChunk0843
import D0ForestChunk0844
import D0ForestChunk0845
import D0ForestChunk0846
import D0ForestChunk0847
import D0ForestChunk0848
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1503133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 118)))
theorem cover_1503133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503133 := by
  apply coveredState_split_literal (state := state_1503133) 3
    state_1503134 state_1503183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503134
  · exact cover_1503183
#print axioms cover_1503133

def state_1503132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 118)))
theorem cover_1503132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503132 := by
  apply coveredState_split_literal (state := state_1503132) 0
    state_1503133 state_1503222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503133
  · exact cover_1503222
#print axioms cover_1503132

def state_1503131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 118)))
theorem cover_1503131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503131 := by
  apply coveredState_split_literal (state := state_1503131) 2
    state_1503132 state_1503239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503132
  · exact cover_1503239
#print axioms cover_1503131

def state_1503252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
theorem cover_1503252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503252 := by
  apply coveredState_split_literal (state := state_1503252) 3
    state_1503253 state_1503284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503253
  · exact cover_1503284
#print axioms cover_1503252

def state_1503251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
theorem cover_1503251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503251 := by
  apply coveredState_split_literal (state := state_1503251) 0
    state_1503252 state_1503345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503252
  · exact cover_1503345
#print axioms cover_1503251

def state_1503250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 119)))
theorem cover_1503250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503250 := by
  apply coveredState_split_literal (state := state_1503250) 2
    state_1503251 state_1503356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503251
  · exact cover_1503356
#print axioms cover_1503250

def state_1503130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 59)))
theorem cover_1503130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503130 := by
  apply coveredState_split_literal (state := state_1503130) 4
    state_1503131 state_1503250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503131
  · exact cover_1503250
#print axioms cover_1503130

def state_1503086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 59)))
theorem cover_1503086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503086 := by
  apply coveredState_split_literal (state := state_1503086) 1
    state_1503087 state_1503130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503087
  · exact cover_1503130
#print axioms cover_1503086

def state_1503473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 119)))
theorem cover_1503473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503473 := by
  apply coveredState_split_literal (state := state_1503473) 2
    state_1503474 state_1503513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503474
  · exact cover_1503513
#print axioms cover_1503473

def state_1503423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 59)))
theorem cover_1503423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503423 := by
  apply coveredState_split_literal (state := state_1503423) 4
    state_1503424 state_1503473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503424
  · exact cover_1503473
#print axioms cover_1503423

def state_1503375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 59)))
theorem cover_1503375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503375 := by
  apply coveredState_split_literal (state := state_1503375) 1
    state_1503376 state_1503423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503376
  · exact cover_1503423
#print axioms cover_1503375

def state_1503085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
theorem cover_1503085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503085 := by
  apply coveredState_split_literal (state := state_1503085) 3
    state_1503086 state_1503375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503086
  · exact cover_1503375
#print axioms cover_1503085

def state_1503084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
theorem cover_1503084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503084 := by
  apply coveredState_split_literal (state := state_1503084) 0
    state_1503085 state_1503572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503085
  · exact cover_1503572
#print axioms cover_1503084

def state_1503040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 59)))
theorem cover_1503040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503040 := by
  apply coveredState_split_literal (state := state_1503040) 2
    state_1503041 state_1503084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503041
  · exact cover_1503084
#print axioms cover_1503040

def state_1502936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 29)))
theorem cover_1502936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502936 := by
  apply coveredState_split_literal (state := state_1502936) 4
    state_1502937 state_1503040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502937
  · exact cover_1503040
#print axioms cover_1502936

def state_1503636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 59)))
theorem cover_1503636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503636 := by
  apply coveredState_split_literal (state := state_1503636) 1
    state_1503637 state_1503668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503637
  · exact cover_1503668
#print axioms cover_1503636

def state_1503635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 59)))
theorem cover_1503635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503635 := by
  apply coveredState_split_literal (state := state_1503635) 0
    state_1503636 state_1503709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503636
  · exact cover_1503709
#print axioms cover_1503635

def state_1503629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 59)))
theorem cover_1503629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503629 := by
  apply coveredState_split_literal (state := state_1503629) 2
    state_1503630 state_1503635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503630
  · exact cover_1503635
#print axioms cover_1503629

def state_1503621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 29)))
theorem cover_1503621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503621 := by
  apply coveredState_split_literal (state := state_1503621) 4
    state_1503622 state_1503629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503622
  · exact cover_1503629
#print axioms cover_1503621

def state_1502935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1502935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502935 := by
  apply coveredState_split_literal (state := state_1502935) 3
    state_1502936 state_1503621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502936
  · exact cover_1503621
#print axioms cover_1502935

def state_1503829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 172) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 238)))
theorem cover_1503829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503829 := by
  apply coveredState_split_literal (state := state_1503829) 2
    state_1503830 state_1503867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503830
  · exact cover_1503867
#print axioms cover_1503829

def state_1503828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 172) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 119)))
theorem cover_1503828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503828 := by
  apply coveredState_split_literal (state := state_1503828) 4
    state_1503829 state_1503898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503829
  · exact cover_1503898
#print axioms cover_1503828

def state_1503827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 119)))
theorem cover_1503827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503827 := by
  apply coveredState_split_literal (state := state_1503827) 1
    state_1503828 state_1503927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503828
  · exact cover_1503927
#print axioms cover_1503827

def state_1503929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 172) else (if j.val < 3 then 82 else (if j.val < 4 then 209 else 119)))
theorem cover_1503929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503929 := by
  apply coveredState_split_literal (state := state_1503929) 4
    state_1503930 state_1503965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503930
  · exact cover_1503965
#print axioms cover_1503929

def state_1503928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 209 else 119)))
theorem cover_1503928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503928 := by
  apply coveredState_split_literal (state := state_1503928) 1
    state_1503929 state_1504008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503929
  · exact cover_1504008
#print axioms cover_1503928

def state_1503826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
theorem cover_1503826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503826 := by
  apply coveredState_split_literal (state := state_1503826) 3
    state_1503827 state_1503928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503827
  · exact cover_1503928
#print axioms cover_1503826

def state_1503825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
theorem cover_1503825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503825 := by
  apply coveredState_split_literal (state := state_1503825) 0
    state_1503826 state_1504009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503826
  · exact cover_1504009
#print axioms cover_1503825

def state_1503824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 119)))
theorem cover_1503824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503824 := by
  apply coveredState_split_literal (state := state_1503824) 2
    state_1503825 state_1504044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503825
  · exact cover_1504044
#print axioms cover_1503824

def state_1503784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 59)))
theorem cover_1503784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503784 := by
  apply coveredState_split_literal (state := state_1503784) 4
    state_1503785 state_1503824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503785
  · exact cover_1503824
#print axioms cover_1503784

def state_1504126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 119)))
theorem cover_1504126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504126 := by
  apply coveredState_split_literal (state := state_1504126) 1
    state_1504127 state_1504180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504127
  · exact cover_1504180
#print axioms cover_1504126

def state_1504125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 119)))
theorem cover_1504125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504125 := by
  apply coveredState_split_literal (state := state_1504125) 0
    state_1504126 state_1504191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504126
  · exact cover_1504191
#print axioms cover_1504125

def state_1504089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 119)))
theorem cover_1504089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504089 := by
  apply coveredState_split_literal (state := state_1504089) 2
    state_1504090 state_1504125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504090
  · exact cover_1504125
#print axioms cover_1504089
end Mub6.Numerical.CircleFullD0.Forest
