import D0FullInterface
import D0ForestAssembly0202
import D0ForestAssembly0203
import D0ForestChunk0766
import D0ForestChunk0770
import D0ForestChunk0771
import D0ForestChunk0772
import D0ForestChunk0773
import D0ForestChunk0774
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1484907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1484907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484907 := by
  apply coveredState_split_literal (state := state_1484907) 1
    state_1484908 state_1485309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484908
  · exact cover_1485309
#print axioms cover_1484907

def state_1484865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 26)))
theorem cover_1484865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484865 := by
  apply coveredState_split_literal (state := state_1484865) 2
    state_1484866 state_1484907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484866
  · exact cover_1484907
#print axioms cover_1484865

def state_1485840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 27)))
theorem cover_1485840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485840 := by
  apply coveredState_split_literal (state := state_1485840) 0
    state_1485841 state_1485898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485841
  · exact cover_1485898
#print axioms cover_1485840

def state_1485826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 27)))
theorem cover_1485826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485826 := by
  apply coveredState_split_literal (state := state_1485826) 1
    state_1485827 state_1485840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485827
  · exact cover_1485840
#print axioms cover_1485826

def state_1485820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 27)))
theorem cover_1485820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485820 := by
  apply coveredState_split_literal (state := state_1485820) 2
    state_1485821 state_1485826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485821
  · exact cover_1485826
#print axioms cover_1485820

def state_1484864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 13)))
theorem cover_1484864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484864 := by
  apply coveredState_split_literal (state := state_1484864) 4
    state_1484865 state_1485820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484865
  · exact cover_1485820
#print axioms cover_1484864

def state_1484863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1484863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484863 := by
  apply coveredState_split_literal (state := state_1484863) 3
    state_1484864 state_1485939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484864
  · exact cover_1485939
#print axioms cover_1484863

def state_1484862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1484862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484862 := by
  apply coveredState_split_literal (state := state_1484862) 0
    state_1484863 state_1485962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484863
  · exact cover_1485962
#print axioms cover_1484862

def state_1484852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1484852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484852 := by
  apply coveredState_split_literal (state := state_1484852) 2
    state_1484853 state_1484862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484853
  · exact cover_1484862
#print axioms cover_1484852

def state_1486082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 27)))
theorem cover_1486082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486082 := by
  apply coveredState_split_literal (state := state_1486082) 1
    state_1486083 state_1486142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486083
  · exact cover_1486142
#print axioms cover_1486082

def state_1486078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 27)))
theorem cover_1486078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486078 := by
  apply coveredState_split_literal (state := state_1486078) 2
    state_1486079 state_1486082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486079
  · exact cover_1486082
#print axioms cover_1486078

def state_1486077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 27)))
theorem cover_1486077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486077 := by
  apply coveredState_split_literal (state := state_1486077) 3
    state_1486078 state_1486157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486078
  · exact cover_1486157
#print axioms cover_1486077

def state_1486168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 36) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 54)))
theorem cover_1486168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486168 := by
  apply coveredState_split_literal (state := state_1486168) 3
    state_1486169 state_1486216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486169
  · exact cover_1486216
#print axioms cover_1486168

def state_1486167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 36) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 54)))
theorem cover_1486167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486167 := by
  apply coveredState_split_literal (state := state_1486167) 0
    state_1486168 state_1486233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486168
  · exact cover_1486233
#print axioms cover_1486167

def state_1486166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 36) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 27)))
theorem cover_1486166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486166 := by
  apply coveredState_split_literal (state := state_1486166) 4
    state_1486167 state_1486248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486167
  · exact cover_1486248
#print axioms cover_1486166

def state_1486165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 27)))
theorem cover_1486165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486165 := by
  apply coveredState_split_literal (state := state_1486165) 1
    state_1486166 state_1486257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486166
  · exact cover_1486257
#print axioms cover_1486165

def state_1486159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 27)))
theorem cover_1486159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486159 := by
  apply coveredState_split_literal (state := state_1486159) 2
    state_1486160 state_1486165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486160
  · exact cover_1486165
#print axioms cover_1486159

def state_1486158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 27)))
theorem cover_1486158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486158 := by
  apply coveredState_split_literal (state := state_1486158) 3
    state_1486159 state_1486290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486159
  · exact cover_1486290
#print axioms cover_1486158

def state_1486076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 27)))
theorem cover_1486076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486076 := by
  apply coveredState_split_literal (state := state_1486076) 0
    state_1486077 state_1486158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486077
  · exact cover_1486158
#print axioms cover_1486076

def state_1486070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 27)))
theorem cover_1486070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486070 := by
  apply coveredState_split_literal (state := state_1486070) 2
    state_1486071 state_1486076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486071
  · exact cover_1486076
#print axioms cover_1486070

def state_1486069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 27)))
theorem cover_1486069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486069 := by
  apply coveredState_split_literal (state := state_1486069) 1
    state_1486070 state_1486311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486070
  · exact cover_1486311
#print axioms cover_1486069

def state_1486007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 13)))
theorem cover_1486007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486007 := by
  apply coveredState_split_literal (state := state_1486007) 4
    state_1486008 state_1486069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486008
  · exact cover_1486069
#print axioms cover_1486007

def state_1486006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1486006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486006 := by
  apply coveredState_split_literal (state := state_1486006) 3
    state_1486007 state_1486338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486007
  · exact cover_1486338
#print axioms cover_1486006

def state_1486005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1486005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486005 := by
  apply coveredState_split_literal (state := state_1486005) 0
    state_1486006 state_1486351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486006
  · exact cover_1486351
#print axioms cover_1486005

def state_1486003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1486003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486003 := by
  apply coveredState_split_literal (state := state_1486003) 2
    state_1486004 state_1486005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486004
  · exact cover_1486005
#print axioms cover_1486003

def state_1484851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1484851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484851 := by
  apply coveredState_split_literal (state := state_1484851) 1
    state_1484852 state_1486003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484852
  · exact cover_1486003
#print axioms cover_1484851

def state_1484715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_1484715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484715 := by
  apply coveredState_split_literal (state := state_1484715) 4
    state_1484716 state_1484851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484716
  · exact cover_1484851
#print axioms cover_1484715

def state_1481337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1481337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481337 := by
  apply coveredState_split_literal (state := state_1481337) 3
    state_1481338 state_1484715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481338
  · exact cover_1484715
#print axioms cover_1481337

def state_1481336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1481336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481336 := by
  apply coveredState_split_literal (state := state_1481336) 0
    state_1481337 state_1486404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481337
  · exact cover_1486404
#print axioms cover_1481336

def state_1486525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 28)))
theorem cover_1486525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486525 := by
  apply coveredState_split_literal (state := state_1486525) 3
    state_1486526 state_1486567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486526
  · exact cover_1486567
#print axioms cover_1486525

def state_1486524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 28)))
theorem cover_1486524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486524 := by
  apply coveredState_split_literal (state := state_1486524) 0
    state_1486525 state_1486612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486525
  · exact cover_1486612
#print axioms cover_1486524

def state_1486523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 14)))
theorem cover_1486523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486523 := by
  apply coveredState_split_literal (state := state_1486523) 4
    state_1486524 state_1486637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486524
  · exact cover_1486637
#print axioms cover_1486523
end Mub6.Numerical.CircleFullD0.Forest
