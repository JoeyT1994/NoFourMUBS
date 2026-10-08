import D0FullInterface
import D0ForestAssembly0243
import D0ForestChunk0927
import D0ForestChunk0928
import D0ForestChunk0929
import D0ForestChunk0930
import D0ForestChunk0931
import D0ForestChunk0932
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1523603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 43)))
theorem cover_1523603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523603 := by
  apply coveredState_split_literal (state := state_1523603) 1
    state_1523604 state_1523645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523604
  · exact cover_1523645
#print axioms cover_1523603

def state_1523601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 21)))
theorem cover_1523601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523601 := by
  apply coveredState_split_literal (state := state_1523601) 4
    state_1523602 state_1523603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523602
  · exact cover_1523603
#print axioms cover_1523601

def state_1523567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 21)))
theorem cover_1523567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523567 := by
  apply coveredState_split_literal (state := state_1523567) 2
    state_1523568 state_1523601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523568
  · exact cover_1523601
#print axioms cover_1523567

def state_1523361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 18 else 21)))
theorem cover_1523361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523361 := by
  apply coveredState_split_literal (state := state_1523361) 0
    state_1523362 state_1523567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523362
  · exact cover_1523567
#print axioms cover_1523361

def state_1523360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 21)))
theorem cover_1523360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523360 := by
  apply coveredState_split_literal (state := state_1523360) 3
    state_1523361 state_1523678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523361
  · exact cover_1523678
#print axioms cover_1523360

def state_1523300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 21)))
theorem cover_1523300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523300 := by
  apply coveredState_split_literal (state := state_1523300) 1
    state_1523301 state_1523360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523301
  · exact cover_1523360
#print axioms cover_1523300

def state_1523254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 10)))
theorem cover_1523254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523254 := by
  apply coveredState_split_literal (state := state_1523254) 4
    state_1523255 state_1523300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523255
  · exact cover_1523300
#print axioms cover_1523254

def state_1523202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 10)))
theorem cover_1523202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523202 := by
  apply coveredState_split_literal (state := state_1523202) 2
    state_1523203 state_1523254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523203
  · exact cover_1523254
#print axioms cover_1523202

def state_1523201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 10)))
theorem cover_1523201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523201 := by
  apply coveredState_split_literal (state := state_1523201) 0
    state_1523202 state_1523709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523202
  · exact cover_1523709
#print axioms cover_1523201

def state_1521309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1521309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521309 := by
  apply coveredState_split_literal (state := state_1521309) 3
    state_1521310 state_1523201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521310
  · exact cover_1523201
#print axioms cover_1521309

def state_1523740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1523740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523740 := by
  apply coveredState_split_literal (state := state_1523740) 2
    state_1523741 state_1523766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523741
  · exact cover_1523766
#print axioms cover_1523740

def state_1523739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1523739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523739 := by
  apply coveredState_split_literal (state := state_1523739) 0
    state_1523740 state_1523807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523740
  · exact cover_1523807
#print axioms cover_1523739

def state_1523738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1523738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523738 := by
  apply coveredState_split_literal (state := state_1523738) 3
    state_1523739 state_1523808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523739
  · exact cover_1523808
#print axioms cover_1523738

def state_1521308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1521308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521308 := by
  apply coveredState_split_literal (state := state_1521308) 1
    state_1521309 state_1523738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521309
  · exact cover_1523738
#print axioms cover_1521308

def state_1523892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 44)))
theorem cover_1523892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523892 := by
  apply coveredState_split_literal (state := state_1523892) 4
    state_1523893 state_1523950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523893
  · exact cover_1523950
#print axioms cover_1523892

def state_1523995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 115) else (if j.val < 3 then 89 else (if j.val < 4 then 65 else 88)))
theorem cover_1523995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523995 := by
  apply coveredState_split_literal (state := state_1523995) 2
    state_1523996 state_1524031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523996
  · exact cover_1524031
#print axioms cover_1523995

def state_1523994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 115) else (if j.val < 3 then 89 else (if j.val < 4 then 65 else 88)))
theorem cover_1523994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523994 := by
  apply coveredState_split_literal (state := state_1523994) 0
    state_1523995 state_1524066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523995
  · exact cover_1524066
#print axioms cover_1523994

def state_1523982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 115) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 88)))
theorem cover_1523982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523982 := by
  apply coveredState_split_literal (state := state_1523982) 3
    state_1523983 state_1523994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523983
  · exact cover_1523994
#print axioms cover_1523982

def state_1523974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 88)))
theorem cover_1523974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523974 := by
  apply coveredState_split_literal (state := state_1523974) 1
    state_1523975 state_1523982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523975
  · exact cover_1523982
#print axioms cover_1523974

def state_1523973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 44)))
theorem cover_1523973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523973 := by
  apply coveredState_split_literal (state := state_1523973) 4
    state_1523974 state_1524095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523974
  · exact cover_1524095
#print axioms cover_1523973

def state_1523891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1523891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523891 := by
  apply coveredState_split_literal (state := state_1523891) 2
    state_1523892 state_1523973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523892
  · exact cover_1523973
#print axioms cover_1523891

def state_1523890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1523890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523890 := by
  apply coveredState_split_literal (state := state_1523890) 0
    state_1523891 state_1524110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523891
  · exact cover_1524110
#print axioms cover_1523890

def state_1524136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
theorem cover_1524136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524136 := by
  apply coveredState_split_literal (state := state_1524136) 2
    state_1524137 state_1524150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524137
  · exact cover_1524150
#print axioms cover_1524136

def state_1524135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
theorem cover_1524135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524135 := by
  apply coveredState_split_literal (state := state_1524135) 0
    state_1524136 state_1524205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524136
  · exact cover_1524205
#print axioms cover_1524135

def state_1523889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1523889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523889 := by
  apply coveredState_split_literal (state := state_1523889) 3
    state_1523890 state_1524135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523890
  · exact cover_1524135
#print axioms cover_1523889

def state_1523881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1523881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523881 := by
  apply coveredState_split_literal (state := state_1523881) 1
    state_1523882 state_1523889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523882
  · exact cover_1523889
#print axioms cover_1523881

def state_1523880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 22)))
theorem cover_1523880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523880 := by
  apply coveredState_split_literal (state := state_1523880) 4
    state_1523881 state_1524210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523881
  · exact cover_1524210
#print axioms cover_1523880

def state_1524252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 44)))
theorem cover_1524252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524252 := by
  apply coveredState_split_literal (state := state_1524252) 0
    state_1524253 state_1524310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524253
  · exact cover_1524310
#print axioms cover_1524252

def state_1524234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 44)))
theorem cover_1524234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524234 := by
  apply coveredState_split_literal (state := state_1524234) 3
    state_1524235 state_1524252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524235
  · exact cover_1524252
#print axioms cover_1524234

def state_1524232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 44)))
theorem cover_1524232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524232 := by
  apply coveredState_split_literal (state := state_1524232) 1
    state_1524233 state_1524234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524233
  · exact cover_1524234
#print axioms cover_1524232

def state_1524231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 22)))
theorem cover_1524231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524231 := by
  apply coveredState_split_literal (state := state_1524231) 4
    state_1524232 state_1524319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524232
  · exact cover_1524319
#print axioms cover_1524231

def state_1523879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1523879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523879 := by
  apply coveredState_split_literal (state := state_1523879) 2
    state_1523880 state_1524231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523880
  · exact cover_1524231
#print axioms cover_1523879
end Mub6.Numerical.CircleFullD0.Forest
