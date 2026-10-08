import D0FullInterface
import D0ForestAssembly0239
import D0ForestChunk0913
import D0ForestChunk0914
import D0ForestChunk0915
import D0ForestChunk0916
import D0ForestChunk0917
import D0ForestChunk0918
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1519723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1519723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519723 := by
  apply coveredState_split_literal (state := state_1519723) 1
    state_1519724 state_1519787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519724
  · exact cover_1519787
#print axioms cover_1519723

def state_1519722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1519722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519722 := by
  apply coveredState_split_literal (state := state_1519722) 0
    state_1519723 state_1519858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519723
  · exact cover_1519858
#print axioms cover_1519722

def state_1519895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1519895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519895 := by
  apply coveredState_split_literal (state := state_1519895) 0
    state_1519896 state_1519943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519896
  · exact cover_1519943
#print axioms cover_1519895

def state_1519721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1519721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519721 := by
  apply coveredState_split_literal (state := state_1519721) 4
    state_1519722 state_1519895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519722
  · exact cover_1519895
#print axioms cover_1519721

def state_1519969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1519969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519969 := by
  apply coveredState_split_literal (state := state_1519969) 0
    state_1519970 state_1520033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519970
  · exact cover_1520033
#print axioms cover_1519969

def state_1520087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1520087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520087 := by
  apply coveredState_split_literal (state := state_1520087) 3
    state_1520088 state_1520131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520088
  · exact cover_1520131
#print axioms cover_1520087

def state_1520086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1520086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520086 := by
  apply coveredState_split_literal (state := state_1520086) 2
    state_1520087 state_1520156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520087
  · exact cover_1520156
#print axioms cover_1520086

def state_1520172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1520172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520172 := by
  apply coveredState_split_literal (state := state_1520172) 3
    state_1520173 state_1520214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520173
  · exact cover_1520214
#print axioms cover_1520172

def state_1520171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1520171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520171 := by
  apply coveredState_split_literal (state := state_1520171) 2
    state_1520172 state_1520265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520172
  · exact cover_1520265
#print axioms cover_1520171

def state_1520085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1520085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520085 := by
  apply coveredState_split_literal (state := state_1520085) 1
    state_1520086 state_1520171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520086
  · exact cover_1520171
#print axioms cover_1520085

def state_1520278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1520278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520278 := by
  apply coveredState_split_literal (state := state_1520278) 2
    state_1520279 state_1520334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520279
  · exact cover_1520334
#print axioms cover_1520278

def state_1520277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_1520277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520277 := by
  apply coveredState_split_literal (state := state_1520277) 4
    state_1520278 state_1520347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520278
  · exact cover_1520347
#print axioms cover_1520277

def state_1520276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1520276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520276 := by
  apply coveredState_split_literal (state := state_1520276) 3
    state_1520277 state_1520366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520277
  · exact cover_1520366
#print axioms cover_1520276

def state_1520275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1520275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520275 := by
  apply coveredState_split_literal (state := state_1520275) 2
    state_1520276 state_1520395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520276
  · exact cover_1520395
#print axioms cover_1520275

def state_1520274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1520274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520274 := by
  apply coveredState_split_literal (state := state_1520274) 1
    state_1520275 state_1520406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520275
  · exact cover_1520406
#print axioms cover_1520274

def state_1520084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1520084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520084 := by
  apply coveredState_split_literal (state := state_1520084) 0
    state_1520085 state_1520274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520085
  · exact cover_1520274
#print axioms cover_1520084

def state_1519968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1519968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519968 := by
  apply coveredState_split_literal (state := state_1519968) 4
    state_1519969 state_1520084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519969
  · exact cover_1520084
#print axioms cover_1519968

def state_1519720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1519720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519720 := by
  apply coveredState_split_literal (state := state_1519720) 3
    state_1519721 state_1519968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519721
  · exact cover_1519968
#print axioms cover_1519720

def state_1471198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1471198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471198 := by
  apply coveredState_split_literal (state := state_1471198) 2
    state_1471199 state_1519720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471199
  · exact cover_1519720
#print axioms cover_1471198

def state_1520541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_1520541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520541 := by
  apply coveredState_split_literal (state := state_1520541) 2
    state_1520542 state_1520561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520542
  · exact cover_1520561
#print axioms cover_1520541

def state_1520527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_1520527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520527 := by
  apply coveredState_split_literal (state := state_1520527) 1
    state_1520528 state_1520541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520528
  · exact cover_1520541
#print axioms cover_1520527

def state_1520526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_1520526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520526 := by
  apply coveredState_split_literal (state := state_1520526) 0
    state_1520527 state_1520622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520527
  · exact cover_1520622
#print axioms cover_1520526

def state_1520639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 5)))
theorem cover_1520639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520639 := by
  apply coveredState_split_literal (state := state_1520639) 4
    state_1520640 state_1520693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520640
  · exact cover_1520693
#print axioms cover_1520639

def state_1520706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1520706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520706 := by
  apply coveredState_split_literal (state := state_1520706) 0
    state_1520707 state_1520768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520707
  · exact cover_1520768
#print axioms cover_1520706

def state_1520705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1520705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520705 := by
  apply coveredState_split_literal (state := state_1520705) 3
    state_1520706 state_1520775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520706
  · exact cover_1520775
#print axioms cover_1520705

def state_1520704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
theorem cover_1520704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520704 := by
  apply coveredState_split_literal (state := state_1520704) 4
    state_1520705 state_1520804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520705
  · exact cover_1520804
#print axioms cover_1520704

def state_1520638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1520638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520638 := by
  apply coveredState_split_literal (state := state_1520638) 2
    state_1520639 state_1520704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520639
  · exact cover_1520704
#print axioms cover_1520638

def state_1520630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1520630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520630 := by
  apply coveredState_split_literal (state := state_1520630) 1
    state_1520631 state_1520638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520631
  · exact cover_1520638
#print axioms cover_1520630

def state_1520629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1520629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520629 := by
  apply coveredState_split_literal (state := state_1520629) 0
    state_1520630 state_1520825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520630
  · exact cover_1520825
#print axioms cover_1520629

def state_1520525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_1520525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520525 := by
  apply coveredState_split_literal (state := state_1520525) 4
    state_1520526 state_1520629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520526
  · exact cover_1520629
#print axioms cover_1520525

def state_1520524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1520524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520524 := by
  apply coveredState_split_literal (state := state_1520524) 3
    state_1520525 state_1520834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520525
  · exact cover_1520834
#print axioms cover_1520524

def state_1520466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1520466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520466 := by
  apply coveredState_split_literal (state := state_1520466) 2
    state_1520467 state_1520524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520467
  · exact cover_1520524
#print axioms cover_1520466
end Mub6.Numerical.CircleFullD0.Forest
