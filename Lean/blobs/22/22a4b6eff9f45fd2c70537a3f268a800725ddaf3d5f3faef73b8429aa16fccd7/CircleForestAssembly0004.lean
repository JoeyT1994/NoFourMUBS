import CircleFullInterface
import CircleForestAssembly0003
import CircleForestChunk0017
import CircleForestChunk0018
import CircleForestChunk0019
import CircleForestChunk0020
import CircleForestChunk0021
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_941548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_941548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941548 := by
  apply coveredState_split_literal (state := state_941548) 4
    state_941549 state_941644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941549
  · exact cover_941644
#print axioms cover_941548

def state_941106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_941106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941106 := by
  apply coveredState_split_literal (state := state_941106) 2
    state_941107 state_941548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941107
  · exact cover_941548
#print axioms cover_941106

def state_940932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_940932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940932 := by
  apply coveredState_split_literal (state := state_940932) 0
    state_940933 state_941106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940933
  · exact cover_941106
#print axioms cover_940932

def state_940931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_940931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940931 := by
  apply coveredState_split_literal (state := state_940931) 4
    state_940932 state_941765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940932
  · exact cover_941765
#print axioms cover_940931

def state_941786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_941786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941786 := by
  apply coveredState_split_literal (state := state_941786) 4
    state_941787 state_941844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941787
  · exact cover_941844
#print axioms cover_941786

def state_940930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_940930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940930 := by
  apply coveredState_split_literal (state := state_940930) 3
    state_940931 state_941786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940931
  · exact cover_941786
#print axioms cover_940930

def state_941865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_941865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941865 := by
  apply coveredState_split_literal (state := state_941865) 4
    state_941866 state_941897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941866
  · exact cover_941897
#print axioms cover_941865

def state_941853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_941853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941853 := by
  apply coveredState_split_literal (state := state_941853) 0
    state_941854 state_941865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941854
  · exact cover_941865
#print axioms cover_941853

def state_941852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_941852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941852 := by
  apply coveredState_split_literal (state := state_941852) 4
    state_941853 state_941932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941853
  · exact cover_941932
#print axioms cover_941852

def state_941939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_941939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941939 := by
  apply coveredState_split_literal (state := state_941939) 4
    state_941940 state_941999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941940
  · exact cover_941999
#print axioms cover_941939

def state_941851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_941851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941851 := by
  apply coveredState_split_literal (state := state_941851) 3
    state_941852 state_941939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_941852
  · exact cover_941939
#print axioms cover_941851

def state_940929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_940929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940929 := by
  apply coveredState_split_literal (state := state_940929) 2
    state_940930 state_941851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940930
  · exact cover_941851
#print axioms cover_940929

def state_942087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_942087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942087 := by
  apply coveredState_split_literal (state := state_942087) 0
    state_942088 state_942093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942088
  · exact cover_942093
#print axioms cover_942087

def state_942061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_942061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942061 := by
  apply coveredState_split_literal (state := state_942061) 2
    state_942062 state_942087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942062
  · exact cover_942087
#print axioms cover_942061

def state_942060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
theorem cover_942060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942060 := by
  apply coveredState_split_literal (state := state_942060) 3
    state_942061 state_942156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942061
  · exact cover_942156
#print axioms cover_942060

def state_942032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_942032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942032 := by
  apply coveredState_split_literal (state := state_942032) 4
    state_942033 state_942060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942033
  · exact cover_942060
#print axioms cover_942032

def state_942253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_942253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942253 := by
  apply coveredState_split_literal (state := state_942253) 1
    state_942254 state_942287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942254
  · exact cover_942287
#print axioms cover_942253

def state_942237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_942237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942237 := by
  apply coveredState_split_literal (state := state_942237) 0
    state_942238 state_942253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942238
  · exact cover_942253
#print axioms cover_942237

def state_942215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_942215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942215 := by
  apply coveredState_split_literal (state := state_942215) 3
    state_942216 state_942237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942216
  · exact cover_942237
#print axioms cover_942215

def state_942167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_942167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942167 := by
  apply coveredState_split_literal (state := state_942167) 4
    state_942168 state_942215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942168
  · exact cover_942215
#print axioms cover_942167

def state_942031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_942031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942031 := by
  apply coveredState_split_literal (state := state_942031) 2
    state_942032 state_942167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942032
  · exact cover_942167
#print axioms cover_942031

def state_942030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_942030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942030 := by
  apply coveredState_split_literal (state := state_942030) 1
    state_942031 state_942328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942031
  · exact cover_942328
#print axioms cover_942030

def state_942451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 25)))
theorem cover_942451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942451 := by
  apply coveredState_split_literal (state := state_942451) 4
    state_942452 state_942459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942452
  · exact cover_942459
#print axioms cover_942451

def state_942413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 25)))
theorem cover_942413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942413 := by
  apply coveredState_split_literal (state := state_942413) 0
    state_942414 state_942451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942414
  · exact cover_942451
#print axioms cover_942413

def state_942393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 16 else 25)))
theorem cover_942393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942393 := by
  apply coveredState_split_literal (state := state_942393) 2
    state_942394 state_942413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942394
  · exact cover_942413
#print axioms cover_942393

def state_942392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 25)))
theorem cover_942392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942392 := by
  apply coveredState_split_literal (state := state_942392) 3
    state_942393 state_942518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942393
  · exact cover_942518
#print axioms cover_942392

def state_942391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 25)))
theorem cover_942391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942391 := by
  apply coveredState_split_literal (state := state_942391) 1
    state_942392 state_942529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942392
  · exact cover_942529
#print axioms cover_942391

def state_942389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 12)))
theorem cover_942389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942389 := by
  apply coveredState_split_literal (state := state_942389) 4
    state_942390 state_942391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942390
  · exact cover_942391
#print axioms cover_942389

def state_942564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
theorem cover_942564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942564 := by
  apply coveredState_split_literal (state := state_942564) 2
    state_942565 state_942620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942565
  · exact cover_942620
#print axioms cover_942564

def state_942538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
theorem cover_942538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942538 := by
  apply coveredState_split_literal (state := state_942538) 0
    state_942539 state_942564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942539
  · exact cover_942564
#print axioms cover_942538

def state_942537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_942537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942537 := by
  apply coveredState_split_literal (state := state_942537) 3
    state_942538 state_942635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942538
  · exact cover_942635
#print axioms cover_942537

def state_942536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_942536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942536 := by
  apply coveredState_split_literal (state := state_942536) 1
    state_942537 state_942666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942537
  · exact cover_942666
#print axioms cover_942536
end Mub6.Numerical.CircleFullD0.Forest
