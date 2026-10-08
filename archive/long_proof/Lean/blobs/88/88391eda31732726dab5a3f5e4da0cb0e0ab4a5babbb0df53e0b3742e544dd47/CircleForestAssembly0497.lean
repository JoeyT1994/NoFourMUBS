import CircleFullInterface
import CircleForestChunk1953
import CircleForestChunk1954
import CircleForestChunk1955
import CircleForestChunk1956
import CircleForestChunk1957
import CircleForestChunk1958
import CircleForestChunk1959
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2549318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2549318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549318 := by
  apply coveredState_split_literal (state := state_2549318) 2
    state_2549319 state_2549358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549319
  · exact cover_2549358
#print axioms cover_2549318

def state_2549397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2549397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549397 := by
  apply coveredState_split_literal (state := state_2549397) 2
    state_2549398 state_2549441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549398
  · exact cover_2549441
#print axioms cover_2549397

def state_2549317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2549317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549317 := by
  apply coveredState_split_literal (state := state_2549317) 1
    state_2549318 state_2549397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549318
  · exact cover_2549397
#print axioms cover_2549317

def state_2549307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2549307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549307 := by
  apply coveredState_split_literal (state := state_2549307) 4
    state_2549308 state_2549317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549308
  · exact cover_2549317
#print axioms cover_2549307

def state_2549505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_2549505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549505 := by
  apply coveredState_split_literal (state := state_2549505) 2
    state_2549506 state_2549561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549506
  · exact cover_2549561
#print axioms cover_2549505

def state_2549570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_2549570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549570 := by
  apply coveredState_split_literal (state := state_2549570) 2
    state_2549571 state_2549610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549571
  · exact cover_2549610
#print axioms cover_2549570

def state_2549504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_2549504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549504 := by
  apply coveredState_split_literal (state := state_2549504) 1
    state_2549505 state_2549570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549505
  · exact cover_2549570
#print axioms cover_2549504

def state_2549502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_2549502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549502 := by
  apply coveredState_split_literal (state := state_2549502) 4
    state_2549503 state_2549504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549503
  · exact cover_2549504
#print axioms cover_2549502

def state_2549306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2549306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549306 := by
  apply coveredState_split_literal (state := state_2549306) 3
    state_2549307 state_2549502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549307
  · exact cover_2549502
#print axioms cover_2549306

def state_2549667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
theorem cover_2549667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549667 := by
  apply coveredState_split_literal (state := state_2549667) 4
    state_2549668 state_2549713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549668
  · exact cover_2549713
#print axioms cover_2549667

def state_2549666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2549666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549666 := by
  apply coveredState_split_literal (state := state_2549666) 3
    state_2549667 state_2549744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549667
  · exact cover_2549744
#print axioms cover_2549666

def state_2549652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2549652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549652 := by
  apply coveredState_split_literal (state := state_2549652) 1
    state_2549653 state_2549666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549653
  · exact cover_2549666
#print axioms cover_2549652

def state_2549636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_2549636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549636 := by
  apply coveredState_split_literal (state := state_2549636) 4
    state_2549637 state_2549652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549637
  · exact cover_2549652
#print axioms cover_2549636

def state_2549635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_2549635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549635 := by
  apply coveredState_split_literal (state := state_2549635) 3
    state_2549636 state_2549777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549636
  · exact cover_2549777
#print axioms cover_2549635

def state_2549305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2549305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549305 := by
  apply coveredState_split_literal (state := state_2549305) 2
    state_2549306 state_2549635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549306
  · exact cover_2549635
#print axioms cover_2549305

def state_2549257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2549257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549257 := by
  apply coveredState_split_literal (state := state_2549257) 1
    state_2549258 state_2549305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549258
  · exact cover_2549305
#print axioms cover_2549257

def state_2549834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2549834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549834 := by
  apply coveredState_split_literal (state := state_2549834) 2
    state_2549835 state_2549872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549835
  · exact cover_2549872
#print axioms cover_2549834

def state_2549918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
theorem cover_2549918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549918 := by
  apply coveredState_split_literal (state := state_2549918) 3
    state_2549919 state_2549940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549919
  · exact cover_2549940
#print axioms cover_2549918

def state_2550126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 23)))
theorem cover_2550126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550126 := by
  apply coveredState_split_literal (state := state_2550126) 0
    state_2550127 state_2550150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550127
  · exact cover_2550150
#print axioms cover_2550126

def state_2550062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 11)))
theorem cover_2550062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550062 := by
  apply coveredState_split_literal (state := state_2550062) 4
    state_2550063 state_2550126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550063
  · exact cover_2550126
#print axioms cover_2550062

def state_2550196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 22)))
theorem cover_2550196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550196 := by
  apply coveredState_split_literal (state := state_2550196) 0
    state_2550197 state_2550220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550197
  · exact cover_2550220
#print axioms cover_2550196

def state_2550265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 23)))
theorem cover_2550265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550265 := by
  apply coveredState_split_literal (state := state_2550265) 0
    state_2550266 state_2550315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550266
  · exact cover_2550315
#print axioms cover_2550265

def state_2550195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 11)))
theorem cover_2550195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550195 := by
  apply coveredState_split_literal (state := state_2550195) 4
    state_2550196 state_2550265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550196
  · exact cover_2550265
#print axioms cover_2550195

def state_2550061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 11)))
theorem cover_2550061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550061 := by
  apply coveredState_split_literal (state := state_2550061) 1
    state_2550062 state_2550195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550062
  · exact cover_2550195
#print axioms cover_2550061

def state_2550035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 5)))
theorem cover_2550035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550035 := by
  apply coveredState_split_literal (state := state_2550035) 4
    state_2550036 state_2550061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550036
  · exact cover_2550061
#print axioms cover_2550035

def state_2549985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
theorem cover_2549985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549985 := by
  apply coveredState_split_literal (state := state_2549985) 3
    state_2549986 state_2550035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549986
  · exact cover_2550035
#print axioms cover_2549985

def state_2549917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2549917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549917 := by
  apply coveredState_split_literal (state := state_2549917) 2
    state_2549918 state_2549985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549918
  · exact cover_2549985
#print axioms cover_2549917

def state_2549833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2549833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549833 := by
  apply coveredState_split_literal (state := state_2549833) 1
    state_2549834 state_2549917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549834
  · exact cover_2549917
#print axioms cover_2549833

def state_2550376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2550376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550376 := by
  apply coveredState_split_literal (state := state_2550376) 1
    state_2550377 state_2550388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550377
  · exact cover_2550388
#print axioms cover_2550376

def state_2549832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_2549832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549832 := by
  apply coveredState_split_literal (state := state_2549832) 0
    state_2549833 state_2550376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549833
  · exact cover_2550376
#print axioms cover_2549832

def state_2549820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2549820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549820 := by
  apply coveredState_split_literal (state := state_2549820) 4
    state_2549821 state_2549832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549821
  · exact cover_2549832
#print axioms cover_2549820

def state_2550574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 23)))
theorem cover_2550574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550574 := by
  apply coveredState_split_literal (state := state_2550574) 0
    state_2550575 state_2550614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550575
  · exact cover_2550614
#print axioms cover_2550574
end Mub6.Numerical.CircleFullD0.Forest
