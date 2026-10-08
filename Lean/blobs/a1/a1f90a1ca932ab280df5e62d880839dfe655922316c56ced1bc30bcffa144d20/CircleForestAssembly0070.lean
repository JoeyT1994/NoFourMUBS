import CircleFullInterface
import CircleForestAssembly0045
import CircleForestAssembly0046
import CircleForestAssembly0056
import CircleForestAssembly0064
import CircleForestAssembly0066
import CircleForestAssembly0067
import CircleForestAssembly0069
import CircleForestChunk0272
import CircleForestChunk0282
import CircleForestChunk0283
import CircleForestChunk0284
import CircleForestChunk0285
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1005041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 45)))
theorem cover_1005041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005041 := by
  apply coveredState_split_literal (state := state_1005041) 2
    state_1005042 state_1005101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005042
  · exact cover_1005101
#print axioms cover_1005041

def state_1004859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
theorem cover_1004859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004859 := by
  apply coveredState_split_literal (state := state_1004859) 3
    state_1004860 state_1005041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1004860
  · exact cover_1005041
#print axioms cover_1004859

def state_1002827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_1002827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002827 := by
  apply coveredState_split_literal (state := state_1002827) 4
    state_1002828 state_1004859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002828
  · exact cover_1004859
#print axioms cover_1002827

def state_1002826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_1002826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002826 := by
  apply coveredState_split_literal (state := state_1002826) 0
    state_1002827 state_1005152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002827
  · exact cover_1005152
#print axioms cover_1002826

def state_1002825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
theorem cover_1002825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002825 := by
  apply coveredState_split_literal (state := state_1002825) 2
    state_1002826 state_1005173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002826
  · exact cover_1005173
#print axioms cover_1002825

def state_1005226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 88)))
theorem cover_1005226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005226 := by
  apply coveredState_split_literal (state := state_1005226) 2
    state_1005227 state_1005250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005227
  · exact cover_1005250
#print axioms cover_1005226

def state_1005225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 44)))
theorem cover_1005225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005225 := by
  apply coveredState_split_literal (state := state_1005225) 4
    state_1005226 state_1005301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005226
  · exact cover_1005301
#print axioms cover_1005225

def state_1005224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 44)))
theorem cover_1005224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005224 := by
  apply coveredState_split_literal (state := state_1005224) 0
    state_1005225 state_1005340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005225
  · exact cover_1005340
#print axioms cover_1005224

def state_1005223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 44)))
theorem cover_1005223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005223 := by
  apply coveredState_split_literal (state := state_1005223) 3
    state_1005224 state_1005381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005224
  · exact cover_1005381
#print axioms cover_1005223

def state_1005203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 44)))
theorem cover_1005203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005203 := by
  apply coveredState_split_literal (state := state_1005203) 1
    state_1005204 state_1005223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005204
  · exact cover_1005223
#print axioms cover_1005203

def state_1005191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
theorem cover_1005191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005191 := by
  apply coveredState_split_literal (state := state_1005191) 2
    state_1005192 state_1005203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005192
  · exact cover_1005203
#print axioms cover_1005191

def state_1005190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_1005190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005190 := by
  apply coveredState_split_literal (state := state_1005190) 4
    state_1005191 state_1005390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005191
  · exact cover_1005390
#print axioms cover_1005190

def state_1005189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_1005189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005189 := by
  apply coveredState_split_literal (state := state_1005189) 0
    state_1005190 state_1005413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005190
  · exact cover_1005413
#print axioms cover_1005189

def state_1005464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 54 else 44)))
theorem cover_1005464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005464 := by
  apply coveredState_split_literal (state := state_1005464) 0
    state_1005465 state_1005520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005465
  · exact cover_1005520
#print axioms cover_1005464

def state_1005551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 44)))
theorem cover_1005551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005551 := by
  apply coveredState_split_literal (state := state_1005551) 0
    state_1005552 state_1005595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005552
  · exact cover_1005595
#print axioms cover_1005551

def state_1005463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 44)))
theorem cover_1005463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005463 := by
  apply coveredState_split_literal (state := state_1005463) 3
    state_1005464 state_1005551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005464
  · exact cover_1005551
#print axioms cover_1005463

def state_1005433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 44)))
theorem cover_1005433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005433 := by
  apply coveredState_split_literal (state := state_1005433) 1
    state_1005434 state_1005463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005434
  · exact cover_1005463
#print axioms cover_1005433

def state_1005432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 44)))
theorem cover_1005432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005432 := by
  apply coveredState_split_literal (state := state_1005432) 2
    state_1005433 state_1005628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005433
  · exact cover_1005628
#print axioms cover_1005432

def state_1005431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_1005431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005431 := by
  apply coveredState_split_literal (state := state_1005431) 4
    state_1005432 state_1005681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005432
  · exact cover_1005681
#print axioms cover_1005431

def state_1005430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_1005430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005430 := by
  apply coveredState_split_literal (state := state_1005430) 0
    state_1005431 state_1005718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005431
  · exact cover_1005718
#print axioms cover_1005430

def state_1005188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_1005188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005188 := by
  apply coveredState_split_literal (state := state_1005188) 2
    state_1005189 state_1005430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005189
  · exact cover_1005430
#print axioms cover_1005188

def state_1002824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1002824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002824 := by
  apply coveredState_split_literal (state := state_1002824) 3
    state_1002825 state_1005188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002825
  · exact cover_1005188
#print axioms cover_1002824

def state_1002796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1002796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002796 := by
  apply coveredState_split_literal (state := state_1002796) 1
    state_1002797 state_1002824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002797
  · exact cover_1002824
#print axioms cover_1002796

def state_1002795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1002795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002795 := by
  apply coveredState_split_literal (state := state_1002795) 4
    state_1002796 state_1005743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1002796
  · exact cover_1005743
#print axioms cover_1002795

def state_1001699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1001699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001699 := by
  apply coveredState_split_literal (state := state_1001699) 0
    state_1001700 state_1002795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001700
  · exact cover_1002795
#print axioms cover_1001699

def state_1000171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1000171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000171 := by
  apply coveredState_split_literal (state := state_1000171) 2
    state_1000172 state_1001699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000172
  · exact cover_1001699
#print axioms cover_1000171

def state_992437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_992437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992437 := by
  apply coveredState_split_literal (state := state_992437) 4
    state_992438 state_1000171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992438
  · exact cover_1000171
#print axioms cover_992437

def state_982029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_982029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982029 := by
  apply coveredState_split_literal (state := state_982029) 3
    state_982030 state_992437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982030
  · exact cover_992437
#print axioms cover_982029

def state_981483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_981483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981483 := by
  apply coveredState_split_literal (state := state_981483) 1
    state_981484 state_982029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981484
  · exact cover_982029
#print axioms cover_981483

def state_981135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_981135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981135 := by
  apply coveredState_split_literal (state := state_981135) 0
    state_981136 state_981483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_981136
  · exact cover_981483
#print axioms cover_981135

def state_980305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_980305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980305 := by
  apply coveredState_split_literal (state := state_980305) 4
    state_980306 state_981135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980306
  · exact cover_981135
#print axioms cover_980305

def state_1005785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_1005785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005785 := by
  apply coveredState_split_literal (state := state_1005785) 0
    state_1005786 state_1005797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005786
  · exact cover_1005797
#print axioms cover_1005785
end Mub6.Numerical.CircleFullD0.Forest
