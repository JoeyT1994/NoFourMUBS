import CircleFullInterface
import CircleForestAssembly0010
import CircleForestChunk0047
import CircleForestChunk0048
import CircleForestChunk0049
import CircleForestChunk0050
import CircleForestChunk0051
import CircleForestChunk0052
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_949007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 69 else 108)))
theorem cover_949007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949007 := by
  apply coveredState_split_literal (state := state_949007) 2
    state_949008 state_949097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949008
  · exact cover_949097
#print axioms cover_949007

def state_948873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 69 else 108)))
theorem cover_948873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948873 := by
  apply coveredState_split_literal (state := state_948873) 0
    state_948874 state_949007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948874
  · exact cover_949007
#print axioms cover_948873

def state_948863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 108)))
theorem cover_948863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948863 := by
  apply coveredState_split_literal (state := state_948863) 3
    state_948864 state_948873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948864
  · exact cover_948873
#print axioms cover_948863

def state_948862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 54)))
theorem cover_948862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948862 := by
  apply coveredState_split_literal (state := state_948862) 4
    state_948863 state_949130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948863
  · exact cover_949130
#print axioms cover_948862

def state_949147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 54)))
theorem cover_949147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949147 := by
  apply coveredState_split_literal (state := state_949147) 4
    state_949148 state_949183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949148
  · exact cover_949183
#print axioms cover_949147

def state_948861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 54)))
theorem cover_948861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948861 := by
  apply coveredState_split_literal (state := state_948861) 1
    state_948862 state_949147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948862
  · exact cover_949147
#print axioms cover_948861

def state_948509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
theorem cover_948509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948509 := by
  apply coveredState_split_literal (state := state_948509) 2
    state_948510 state_948861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948510
  · exact cover_948861
#print axioms cover_948509

def state_948423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
theorem cover_948423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948423 := by
  apply coveredState_split_literal (state := state_948423) 0
    state_948424 state_948509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948424
  · exact cover_948509
#print axioms cover_948423

def state_949297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 54)))
theorem cover_949297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949297 := by
  apply coveredState_split_literal (state := state_949297) 1
    state_949298 state_949337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949298
  · exact cover_949337
#print axioms cover_949297

def state_949463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 173) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 108)))
theorem cover_949463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949463 := by
  apply coveredState_split_literal (state := state_949463) 4
    state_949464 state_949517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949464
  · exact cover_949517
#print axioms cover_949463

def state_949401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 108)))
theorem cover_949401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949401 := by
  apply coveredState_split_literal (state := state_949401) 1
    state_949402 state_949463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949402
  · exact cover_949463
#print axioms cover_949401

def state_949536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 172) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 216)))
theorem cover_949536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949536 := by
  apply coveredState_split_literal (state := state_949536) 3
    state_949537 state_949584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949537
  · exact cover_949584
#print axioms cover_949536

def state_949535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 172) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 108)))
theorem cover_949535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949535 := by
  apply coveredState_split_literal (state := state_949535) 4
    state_949536 state_949619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949536
  · exact cover_949619
#print axioms cover_949535

def state_949534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 108)))
theorem cover_949534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949534 := by
  apply coveredState_split_literal (state := state_949534) 1
    state_949535 state_949628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949535
  · exact cover_949628
#print axioms cover_949534

def state_949400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 108)))
theorem cover_949400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949400 := by
  apply coveredState_split_literal (state := state_949400) 2
    state_949401 state_949534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949401
  · exact cover_949534
#print axioms cover_949400

def state_949662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 173) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 108)))
theorem cover_949662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949662 := by
  apply coveredState_split_literal (state := state_949662) 4
    state_949663 state_949682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949663
  · exact cover_949682
#print axioms cover_949662

def state_949630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 108)))
theorem cover_949630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949630 := by
  apply coveredState_split_literal (state := state_949630) 1
    state_949631 state_949662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949631
  · exact cover_949662
#print axioms cover_949630

def state_949730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 108)))
theorem cover_949730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949730 := by
  apply coveredState_split_literal (state := state_949730) 4
    state_949731 state_949782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949731
  · exact cover_949782
#print axioms cover_949730

def state_949729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 108)))
theorem cover_949729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949729 := by
  apply coveredState_split_literal (state := state_949729) 1
    state_949730 state_949807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949730
  · exact cover_949807
#print axioms cover_949729

def state_949629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 108)))
theorem cover_949629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949629 := by
  apply coveredState_split_literal (state := state_949629) 2
    state_949630 state_949729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949630
  · exact cover_949729
#print axioms cover_949629

def state_949399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 108)))
theorem cover_949399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949399 := by
  apply coveredState_split_literal (state := state_949399) 0
    state_949400 state_949629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949400
  · exact cover_949629
#print axioms cover_949399

def state_949398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 108)))
theorem cover_949398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949398 := by
  apply coveredState_split_literal (state := state_949398) 3
    state_949399 state_949808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949399
  · exact cover_949808
#print axioms cover_949398

def state_949397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 54)))
theorem cover_949397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949397 := by
  apply coveredState_split_literal (state := state_949397) 4
    state_949398 state_949853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949398
  · exact cover_949853
#print axioms cover_949397

def state_949884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 108)))
theorem cover_949884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949884 := by
  apply coveredState_split_literal (state := state_949884) 0
    state_949885 state_949920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949885
  · exact cover_949920
#print axioms cover_949884

def state_949883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 108)))
theorem cover_949883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949883 := by
  apply coveredState_split_literal (state := state_949883) 3
    state_949884 state_949977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949884
  · exact cover_949977
#print axioms cover_949883

def state_950030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 87) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 109)))
theorem cover_950030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950030 := by
  apply coveredState_split_literal (state := state_950030) 1
    state_950031 state_950074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950031
  · exact cover_950074
#print axioms cover_950030

def state_950029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 109)))
theorem cover_950029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950029 := by
  apply coveredState_split_literal (state := state_950029) 2
    state_950030 state_950125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_950030
  · exact cover_950125
#print axioms cover_950029

def state_949995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 109)))
theorem cover_949995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949995 := by
  apply coveredState_split_literal (state := state_949995) 0
    state_949996 state_950029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949996
  · exact cover_950029
#print axioms cover_949995

def state_949994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 109)))
theorem cover_949994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949994 := by
  apply coveredState_split_literal (state := state_949994) 3
    state_949995 state_950126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949995
  · exact cover_950126
#print axioms cover_949994

def state_949882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 54)))
theorem cover_949882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949882 := by
  apply coveredState_split_literal (state := state_949882) 4
    state_949883 state_949994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949883
  · exact cover_949994
#print axioms cover_949882

def state_949396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 54)))
theorem cover_949396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949396 := by
  apply coveredState_split_literal (state := state_949396) 1
    state_949397 state_949882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949397
  · exact cover_949882
#print axioms cover_949396

def state_949296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
theorem cover_949296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949296 := by
  apply coveredState_split_literal (state := state_949296) 2
    state_949297 state_949396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949297
  · exact cover_949396
#print axioms cover_949296
end Mub6.Numerical.CircleFullD0.Forest
