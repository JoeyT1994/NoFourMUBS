import CircleFullInterface
import CircleForestAssembly0338
import CircleForestChunk1309
import CircleForestChunk1312
import CircleForestChunk1313
import CircleForestChunk1314
import CircleForestChunk1315
import CircleForestChunk1316
import CircleForestChunk1317
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1614972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1614972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614972 := by
  apply coveredState_split_literal (state := state_1614972) 1
    state_1614973 state_1615008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614973
  · exact cover_1615008
#print axioms cover_1614972

def state_1615686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
theorem cover_1615686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615686 := by
  apply coveredState_split_literal (state := state_1615686) 4
    state_1615687 state_1615748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615687
  · exact cover_1615748
#print axioms cover_1615686

def state_1615668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
theorem cover_1615668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615668 := by
  apply coveredState_split_literal (state := state_1615668) 1
    state_1615669 state_1615686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615669
  · exact cover_1615686
#print axioms cover_1615668

def state_1615766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
theorem cover_1615766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615766 := by
  apply coveredState_split_literal (state := state_1615766) 4
    state_1615767 state_1615800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615767
  · exact cover_1615800
#print axioms cover_1615766

def state_1615851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 48)))
theorem cover_1615851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615851 := by
  apply coveredState_split_literal (state := state_1615851) 4
    state_1615852 state_1615871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615852
  · exact cover_1615871
#print axioms cover_1615851

def state_1615765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 48)))
theorem cover_1615765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615765 := by
  apply coveredState_split_literal (state := state_1615765) 3
    state_1615766 state_1615851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615766
  · exact cover_1615851
#print axioms cover_1615765

def state_1615764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_1615764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615764 := by
  apply coveredState_split_literal (state := state_1615764) 2
    state_1615765 state_1615922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615765
  · exact cover_1615922
#print axioms cover_1615764

def state_1615763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_1615763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615763 := by
  apply coveredState_split_literal (state := state_1615763) 0
    state_1615764 state_1615941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615764
  · exact cover_1615941
#print axioms cover_1615763

def state_1615978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 49)))
theorem cover_1615978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615978 := by
  apply coveredState_split_literal (state := state_1615978) 1
    state_1615979 state_1616010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615979
  · exact cover_1616010
#print axioms cover_1615978

def state_1615944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 49)))
theorem cover_1615944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615944 := by
  apply coveredState_split_literal (state := state_1615944) 3
    state_1615945 state_1615978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615945
  · exact cover_1615978
#print axioms cover_1615944

def state_1615943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
theorem cover_1615943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615943 := by
  apply coveredState_split_literal (state := state_1615943) 2
    state_1615944 state_1616053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615944
  · exact cover_1616053
#print axioms cover_1615943

def state_1615942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
theorem cover_1615942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615942 := by
  apply coveredState_split_literal (state := state_1615942) 0
    state_1615943 state_1616068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615943
  · exact cover_1616068
#print axioms cover_1615942

def state_1615762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_1615762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615762 := by
  apply coveredState_split_literal (state := state_1615762) 4
    state_1615763 state_1615942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615763
  · exact cover_1615942
#print axioms cover_1615762

def state_1616131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
theorem cover_1616131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616131 := by
  apply coveredState_split_literal (state := state_1616131) 2
    state_1616132 state_1616135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616132
  · exact cover_1616135
#print axioms cover_1616131

def state_1616130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
theorem cover_1616130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616130 := by
  apply coveredState_split_literal (state := state_1616130) 0
    state_1616131 state_1616196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616131
  · exact cover_1616196
#print axioms cover_1616130

def state_1616080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
theorem cover_1616080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616080 := by
  apply coveredState_split_literal (state := state_1616080) 4
    state_1616081 state_1616130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616081
  · exact cover_1616130
#print axioms cover_1616080

def state_1616079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
theorem cover_1616079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616079 := by
  apply coveredState_split_literal (state := state_1616079) 1
    state_1616080 state_1616201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616080
  · exact cover_1616201
#print axioms cover_1616079

def state_1616078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 48)))
theorem cover_1616078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616078 := by
  apply coveredState_split_literal (state := state_1616078) 3
    state_1616079 state_1616228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616079
  · exact cover_1616228
#print axioms cover_1616078

def state_1616249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 116 else 96)))
theorem cover_1616249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616249 := by
  apply coveredState_split_literal (state := state_1616249) 4
    state_1616250 state_1616287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616250
  · exact cover_1616287
#print axioms cover_1616249

def state_1616248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 58 else 96)))
theorem cover_1616248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616248 := by
  apply coveredState_split_literal (state := state_1616248) 3
    state_1616249 state_1616342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616249
  · exact cover_1616342
#print axioms cover_1616248

def state_1616247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
theorem cover_1616247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616247 := by
  apply coveredState_split_literal (state := state_1616247) 2
    state_1616248 state_1616387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616248
  · exact cover_1616387
#print axioms cover_1616247

def state_1616246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
theorem cover_1616246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616246 := by
  apply coveredState_split_literal (state := state_1616246) 0
    state_1616247 state_1616404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616247
  · exact cover_1616404
#print axioms cover_1616246

def state_1616406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
theorem cover_1616406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616406 := by
  apply coveredState_split_literal (state := state_1616406) 2
    state_1616407 state_1616468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616407
  · exact cover_1616468
#print axioms cover_1616406

def state_1616405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
theorem cover_1616405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616405 := by
  apply coveredState_split_literal (state := state_1616405) 0
    state_1616406 state_1616477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616406
  · exact cover_1616477
#print axioms cover_1616405

def state_1616245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_1616245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616245 := by
  apply coveredState_split_literal (state := state_1616245) 4
    state_1616246 state_1616405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616246
  · exact cover_1616405
#print axioms cover_1616245

def state_1616543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
theorem cover_1616543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616543 := by
  apply coveredState_split_literal (state := state_1616543) 2
    state_1616544 state_1616593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616544
  · exact cover_1616593
#print axioms cover_1616543

def state_1616542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
theorem cover_1616542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616542 := by
  apply coveredState_split_literal (state := state_1616542) 0
    state_1616543 state_1616654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616543
  · exact cover_1616654
#print axioms cover_1616542

def state_1616478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_1616478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616478 := by
  apply coveredState_split_literal (state := state_1616478) 4
    state_1616479 state_1616542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616479
  · exact cover_1616542
#print axioms cover_1616478

def state_1616244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
theorem cover_1616244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616244 := by
  apply coveredState_split_literal (state := state_1616244) 1
    state_1616245 state_1616478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616245
  · exact cover_1616478
#print axioms cover_1616244

def state_1616683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 48)))
theorem cover_1616683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616683 := by
  apply coveredState_split_literal (state := state_1616683) 1
    state_1616684 state_1616729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616684
  · exact cover_1616729
#print axioms cover_1616683

def state_1616243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 48)))
theorem cover_1616243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616243 := by
  apply coveredState_split_literal (state := state_1616243) 3
    state_1616244 state_1616683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616244
  · exact cover_1616683
#print axioms cover_1616243

def state_1616077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_1616077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616077 := by
  apply coveredState_split_literal (state := state_1616077) 2
    state_1616078 state_1616243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616078
  · exact cover_1616243
#print axioms cover_1616077
end Mub6.Numerical.CircleFullD0.Forest
