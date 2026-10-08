import CircleFullInterface
import CircleForestAssembly0077
import CircleForestAssembly0082
import CircleForestAssembly0084
import CircleForestAssembly0086
import CircleForestAssembly0088
import CircleForestAssembly0089
import CircleForestAssembly0090
import CircleForestAssembly0091
import CircleForestChunk0368
import CircleForestChunk0369
import CircleForestChunk0370
import CircleForestChunk0371
import CircleForestChunk0372
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_163971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
theorem cover_163971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163971 := by
  apply coveredState_split_literal (state := state_163971) 2
    state_163972 state_164009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163972
  · exact cover_164009
#print axioms cover_163971

def state_163867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
theorem cover_163867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163867 := by
  apply coveredState_split_literal (state := state_163867) 1
    state_163868 state_163971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163868
  · exact cover_163971
#print axioms cover_163867

def state_163866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
theorem cover_163866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163866 := by
  apply coveredState_split_literal (state := state_163866) 0
    state_163867 state_164086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163867
  · exact cover_164086
#print axioms cover_163866

def state_163564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_163564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163564 := by
  apply coveredState_split_literal (state := state_163564) 4
    state_163565 state_163866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163565
  · exact cover_163866
#print axioms cover_163564

def state_162076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_162076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162076 := by
  apply coveredState_split_literal (state := state_162076) 3
    state_162077 state_163564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162077
  · exact cover_163564
#print axioms cover_162076

def state_161868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_161868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161868 := by
  apply coveredState_split_literal (state := state_161868) 2
    state_161869 state_162076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161869
  · exact cover_162076
#print axioms cover_161868

def state_161084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_161084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161084 := by
  apply coveredState_split_literal (state := state_161084) 1
    state_161085 state_161868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161085
  · exact cover_161868
#print axioms cover_161084

def state_164185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_164185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164185 := by
  apply coveredState_split_literal (state := state_164185) 0
    state_164186 state_164231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164186
  · exact cover_164231
#print axioms cover_164185

def state_164184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_164184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164184 := by
  apply coveredState_split_literal (state := state_164184) 2
    state_164185 state_164286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164185
  · exact cover_164286
#print axioms cover_164184

def state_164183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_164183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164183 := by
  apply coveredState_split_literal (state := state_164183) 1
    state_164184 state_164297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164184
  · exact cover_164297
#print axioms cover_164183

def state_164159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_164159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164159 := by
  apply coveredState_split_literal (state := state_164159) 4
    state_164160 state_164183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164160
  · exact cover_164183
#print axioms cover_164159

def state_164135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_164135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164135 := by
  apply coveredState_split_literal (state := state_164135) 3
    state_164136 state_164159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164136
  · exact cover_164159
#print axioms cover_164135

def state_164134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_164134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164134 := by
  apply coveredState_split_literal (state := state_164134) 2
    state_164135 state_164316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164135
  · exact cover_164316
#print axioms cover_164134

def state_164345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_164345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164345 := by
  apply coveredState_split_literal (state := state_164345) 2
    state_164346 state_164377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164346
  · exact cover_164377
#print axioms cover_164345

def state_164133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_164133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164133 := by
  apply coveredState_split_literal (state := state_164133) 1
    state_164134 state_164345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164134
  · exact cover_164345
#print axioms cover_164133

def state_161083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_161083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161083 := by
  apply coveredState_split_literal (state := state_161083) 0
    state_161084 state_164133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161084
  · exact cover_164133
#print axioms cover_161083

def state_158759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_158759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158759 := by
  apply coveredState_split_literal (state := state_158759) 4
    state_158760 state_161083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158760
  · exact cover_161083
#print axioms cover_158759

def state_156397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_156397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156397 := by
  apply coveredState_split_literal (state := state_156397) 3
    state_156398 state_158759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156398
  · exact cover_158759
#print axioms cover_156397

def state_154925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_154925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154925 := by
  apply coveredState_split_literal (state := state_154925) 2
    state_154926 state_156397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154926
  · exact cover_156397
#print axioms cover_154925

def state_149231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_149231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149231 := by
  apply coveredState_split_literal (state := state_149231) 1
    state_149232 state_154925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149232
  · exact cover_154925
#print axioms cover_149231

def state_132167 : State := rootState
theorem cover_132167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132167 := by
  apply coveredState_split_literal (state := state_132167) 0
    state_132168 state_149231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132168
  · exact cover_149231
#print axioms cover_132167

def state_164415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_164415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164415 := by
  apply coveredState_split_literal (state := state_164415) 0
    state_164416 state_164431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164416
  · exact cover_164431
#print axioms cover_164415

def state_164720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_164720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164720 := by
  apply coveredState_split_literal (state := state_164720) 4
    state_164721 state_164766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164721
  · exact cover_164766
#print axioms cover_164720

def state_164670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_164670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164670 := by
  apply coveredState_split_literal (state := state_164670) 1
    state_164671 state_164720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164671
  · exact cover_164720
#print axioms cover_164670

def state_164620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_164620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164620 := by
  apply coveredState_split_literal (state := state_164620) 0
    state_164621 state_164670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164621
  · exact cover_164670
#print axioms cover_164620

def state_164580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_164580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164580 := by
  apply coveredState_split_literal (state := state_164580) 3
    state_164581 state_164620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164581
  · exact cover_164620
#print axioms cover_164580

def state_164566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_164566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164566 := by
  apply coveredState_split_literal (state := state_164566) 2
    state_164567 state_164580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164567
  · exact cover_164580
#print axioms cover_164566

def state_164520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_164520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164520 := by
  apply coveredState_split_literal (state := state_164520) 4
    state_164521 state_164566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164521
  · exact cover_164566
#print axioms cover_164520

def state_164502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_164502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164502 := by
  apply coveredState_split_literal (state := state_164502) 3
    state_164503 state_164520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164503
  · exact cover_164520
#print axioms cover_164502

def state_164492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_164492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164492 := by
  apply coveredState_split_literal (state := state_164492) 2
    state_164493 state_164502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164493
  · exact cover_164502
#print axioms cover_164492

def state_164811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_164811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164811 := by
  apply coveredState_split_literal (state := state_164811) 2
    state_164812 state_164817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164812
  · exact cover_164817
#print axioms cover_164811

def state_164491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_164491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164491 := by
  apply coveredState_split_literal (state := state_164491) 1
    state_164492 state_164811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164492
  · exact cover_164811
#print axioms cover_164491
end Mub6.Numerical.CircleFullPrototype.Forest
