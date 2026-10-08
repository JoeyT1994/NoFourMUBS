import CircleFullInterface
import CircleForestAssembly0297
import CircleForestChunk1143
import CircleForestChunk1144
import CircleForestChunk1145
import CircleForestChunk1146
import CircleForestChunk1147
import CircleForestChunk1148
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1574977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
theorem cover_1574977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574977 := by
  apply coveredState_split_literal (state := state_1574977) 2
    state_1574978 state_1575015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574978
  · exact cover_1575015
#print axioms cover_1574977

def state_1575080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
theorem cover_1575080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575080 := by
  apply coveredState_split_literal (state := state_1575080) 2
    state_1575081 state_1575136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575081
  · exact cover_1575136
#print axioms cover_1575080

def state_1574976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_1574976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574976 := by
  apply coveredState_split_literal (state := state_1574976) 4
    state_1574977 state_1575080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574977
  · exact cover_1575080
#print axioms cover_1574976

def state_1574924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1574924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574924 := by
  apply coveredState_split_literal (state := state_1574924) 3
    state_1574925 state_1574976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574925
  · exact cover_1574976
#print axioms cover_1574924

def state_1574914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1574914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574914 := by
  apply coveredState_split_literal (state := state_1574914) 1
    state_1574915 state_1574924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574915
  · exact cover_1574924
#print axioms cover_1574914

def state_1574570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_1574570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574570 := by
  apply coveredState_split_literal (state := state_1574570) 0
    state_1574571 state_1574914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574571
  · exact cover_1574914
#print axioms cover_1574570

def state_1574390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_1574390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574390 := by
  apply coveredState_split_literal (state := state_1574390) 4
    state_1574391 state_1574570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574391
  · exact cover_1574570
#print axioms cover_1574390

def state_1575231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_1575231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575231 := by
  apply coveredState_split_literal (state := state_1575231) 4
    state_1575232 state_1575245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575232
  · exact cover_1575245
#print axioms cover_1575231

def state_1575432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
theorem cover_1575432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575432 := by
  apply coveredState_split_literal (state := state_1575432) 1
    state_1575433 state_1575486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575433
  · exact cover_1575486
#print axioms cover_1575432

def state_1575404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 47)))
theorem cover_1575404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575404 := by
  apply coveredState_split_literal (state := state_1575404) 3
    state_1575405 state_1575432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575405
  · exact cover_1575432
#print axioms cover_1575404

def state_1575374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_1575374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575374 := by
  apply coveredState_split_literal (state := state_1575374) 2
    state_1575375 state_1575404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575375
  · exact cover_1575404
#print axioms cover_1575374

def state_1575362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_1575362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575362 := by
  apply coveredState_split_literal (state := state_1575362) 0
    state_1575363 state_1575374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575363
  · exact cover_1575374
#print axioms cover_1575362

def state_1575304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_1575304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575304 := by
  apply coveredState_split_literal (state := state_1575304) 4
    state_1575305 state_1575362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575305
  · exact cover_1575362
#print axioms cover_1575304

def state_1575230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_1575230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575230 := by
  apply coveredState_split_literal (state := state_1575230) 1
    state_1575231 state_1575304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575231
  · exact cover_1575304
#print axioms cover_1575230

def state_1575229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 23)))
theorem cover_1575229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575229 := by
  apply coveredState_split_literal (state := state_1575229) 3
    state_1575230 state_1575529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575230
  · exact cover_1575529
#print axioms cover_1575229

def state_1575228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_1575228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575228 := by
  apply coveredState_split_literal (state := state_1575228) 2
    state_1575229 state_1575574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575229
  · exact cover_1575574
#print axioms cover_1575228

def state_1575218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_1575218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575218 := by
  apply coveredState_split_literal (state := state_1575218) 0
    state_1575219 state_1575228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575219
  · exact cover_1575228
#print axioms cover_1575218

def state_1575202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1575202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575202 := by
  apply coveredState_split_literal (state := state_1575202) 4
    state_1575203 state_1575218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575203
  · exact cover_1575218
#print axioms cover_1575202

def state_1575184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1575184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575184 := by
  apply coveredState_split_literal (state := state_1575184) 1
    state_1575185 state_1575202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575185
  · exact cover_1575202
#print axioms cover_1575184

def state_1575183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
theorem cover_1575183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575183 := by
  apply coveredState_split_literal (state := state_1575183) 3
    state_1575184 state_1575623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575184
  · exact cover_1575623
#print axioms cover_1575183

def state_1575182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_1575182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575182 := by
  apply coveredState_split_literal (state := state_1575182) 2
    state_1575183 state_1575636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575183
  · exact cover_1575636
#print axioms cover_1575182

def state_1575180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1575180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575180 := by
  apply coveredState_split_literal (state := state_1575180) 4
    state_1575181 state_1575182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575181
  · exact cover_1575182
#print axioms cover_1575180

def state_1575178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1575178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575178 := by
  apply coveredState_split_literal (state := state_1575178) 1
    state_1575179 state_1575180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575179
  · exact cover_1575180
#print axioms cover_1575178

def state_1575690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_1575690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575690 := by
  apply coveredState_split_literal (state := state_1575690) 4
    state_1575691 state_1575698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575691
  · exact cover_1575698
#print axioms cover_1575690

def state_1575678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_1575678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575678 := by
  apply coveredState_split_literal (state := state_1575678) 1
    state_1575679 state_1575690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575679
  · exact cover_1575690
#print axioms cover_1575678

def state_1575794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 47)))
theorem cover_1575794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575794 := by
  apply coveredState_split_literal (state := state_1575794) 2
    state_1575795 state_1575820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575795
  · exact cover_1575820
#print axioms cover_1575794

def state_1575793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 47)))
theorem cover_1575793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575793 := by
  apply coveredState_split_literal (state := state_1575793) 0
    state_1575794 state_1575871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575794
  · exact cover_1575871
#print axioms cover_1575793

def state_1575791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
theorem cover_1575791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575791 := by
  apply coveredState_split_literal (state := state_1575791) 4
    state_1575792 state_1575793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575792
  · exact cover_1575793
#print axioms cover_1575791

def state_1575759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
theorem cover_1575759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575759 := by
  apply coveredState_split_literal (state := state_1575759) 1
    state_1575760 state_1575791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575760
  · exact cover_1575791
#print axioms cover_1575759

def state_1575677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 23)))
theorem cover_1575677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575677 := by
  apply coveredState_split_literal (state := state_1575677) 3
    state_1575678 state_1575759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575678
  · exact cover_1575759
#print axioms cover_1575677

def state_1575906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_1575906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575906 := by
  apply coveredState_split_literal (state := state_1575906) 3
    state_1575907 state_1575930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575907
  · exact cover_1575930
#print axioms cover_1575906

def state_1575905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_1575905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575905 := by
  apply coveredState_split_literal (state := state_1575905) 0
    state_1575906 state_1575979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575906
  · exact cover_1575979
#print axioms cover_1575905
end Mub6.Numerical.CircleFullD0.Forest
