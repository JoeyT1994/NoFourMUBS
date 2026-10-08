import CircleFullInterface
import CircleForestAssembly0119
import CircleForestChunk0467
import CircleForestChunk0468
import CircleForestChunk0469
import CircleForestChunk0470
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1049960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 8)))
theorem cover_1049960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049960 := by
  apply coveredState_split_literal (state := state_1049960) 2
    state_1049961 state_1049978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049961
  · exact cover_1049978
#print axioms cover_1049960

def state_1049948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 8)))
theorem cover_1049948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049948 := by
  apply coveredState_split_literal (state := state_1049948) 3
    state_1049949 state_1049960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049949
  · exact cover_1049960
#print axioms cover_1049948

def state_1049946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 8)))
theorem cover_1049946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049946 := by
  apply coveredState_split_literal (state := state_1049946) 1
    state_1049947 state_1049948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049947
  · exact cover_1049948
#print axioms cover_1049946

def state_1049930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 8)))
theorem cover_1049930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049930 := by
  apply coveredState_split_literal (state := state_1049930) 0
    state_1049931 state_1049946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049931
  · exact cover_1049946
#print axioms cover_1049930

def state_1049929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 4)))
theorem cover_1049929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049929 := by
  apply coveredState_split_literal (state := state_1049929) 4
    state_1049930 state_1050179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049930
  · exact cover_1050179
#print axioms cover_1049929

def state_1049917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_1049917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049917 := by
  apply coveredState_split_literal (state := state_1049917) 2
    state_1049918 state_1049929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049918
  · exact cover_1049929
#print axioms cover_1049917

def state_1050198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 8)))
theorem cover_1050198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050198 := by
  apply coveredState_split_literal (state := state_1050198) 2
    state_1050199 state_1050206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050199
  · exact cover_1050206
#print axioms cover_1050198

def state_1050197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
theorem cover_1050197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050197 := by
  apply coveredState_split_literal (state := state_1050197) 3
    state_1050198 state_1050263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050198
  · exact cover_1050263
#print axioms cover_1050197

def state_1050193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
theorem cover_1050193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050193 := by
  apply coveredState_split_literal (state := state_1050193) 1
    state_1050194 state_1050197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050194
  · exact cover_1050197
#print axioms cover_1050193

def state_1050189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
theorem cover_1050189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050189 := by
  apply coveredState_split_literal (state := state_1050189) 0
    state_1050190 state_1050193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050190
  · exact cover_1050193
#print axioms cover_1050189

def state_1050188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 4)))
theorem cover_1050188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050188 := by
  apply coveredState_split_literal (state := state_1050188) 4
    state_1050189 state_1050264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050189
  · exact cover_1050264
#print axioms cover_1050188

def state_1050180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
theorem cover_1050180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050180 := by
  apply coveredState_split_literal (state := state_1050180) 2
    state_1050181 state_1050188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050181
  · exact cover_1050188
#print axioms cover_1050180

def state_1049916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1049916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049916 := by
  apply coveredState_split_literal (state := state_1049916) 3
    state_1049917 state_1050180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049917
  · exact cover_1050180
#print axioms cover_1049916

def state_1049915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1049915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049915 := by
  apply coveredState_split_literal (state := state_1049915) 1
    state_1049916 state_1050269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049916
  · exact cover_1050269
#print axioms cover_1049915

def state_1050353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 16)))
theorem cover_1050353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050353 := by
  apply coveredState_split_literal (state := state_1050353) 1
    state_1050354 state_1050361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050354
  · exact cover_1050361
#print axioms cover_1050353

def state_1050352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 8)))
theorem cover_1050352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050352 := by
  apply coveredState_split_literal (state := state_1050352) 4
    state_1050353 state_1050418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050353
  · exact cover_1050418
#print axioms cover_1050352

def state_1050346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 8)))
theorem cover_1050346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050346 := by
  apply coveredState_split_literal (state := state_1050346) 2
    state_1050347 state_1050352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050347
  · exact cover_1050352
#print axioms cover_1050346

def state_1050345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 8)))
theorem cover_1050345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050345 := by
  apply coveredState_split_literal (state := state_1050345) 0
    state_1050346 state_1050421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050346
  · exact cover_1050421
#print axioms cover_1050345

def state_1050333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 8)))
theorem cover_1050333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050333 := by
  apply coveredState_split_literal (state := state_1050333) 3
    state_1050334 state_1050345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050334
  · exact cover_1050345
#print axioms cover_1050333

def state_1050327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 8)))
theorem cover_1050327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050327 := by
  apply coveredState_split_literal (state := state_1050327) 1
    state_1050328 state_1050333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050328
  · exact cover_1050333
#print axioms cover_1050327

def state_1050326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 4)))
theorem cover_1050326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050326 := by
  apply coveredState_split_literal (state := state_1050326) 4
    state_1050327 state_1050422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050327
  · exact cover_1050422
#print axioms cover_1050326

def state_1050324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_1050324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050324 := by
  apply coveredState_split_literal (state := state_1050324) 2
    state_1050325 state_1050326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050325
  · exact cover_1050326
#print axioms cover_1050324

def state_1050444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 8)))
theorem cover_1050444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050444 := by
  apply coveredState_split_literal (state := state_1050444) 2
    state_1050445 state_1050456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050445
  · exact cover_1050456
#print axioms cover_1050444

def state_1050443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
theorem cover_1050443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050443 := by
  apply coveredState_split_literal (state := state_1050443) 3
    state_1050444 state_1050515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050444
  · exact cover_1050515
#print axioms cover_1050443

def state_1050442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
theorem cover_1050442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050442 := by
  apply coveredState_split_literal (state := state_1050442) 0
    state_1050443 state_1050524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050443
  · exact cover_1050524
#print axioms cover_1050442

def state_1050436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
theorem cover_1050436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050436 := by
  apply coveredState_split_literal (state := state_1050436) 1
    state_1050437 state_1050442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050437
  · exact cover_1050442
#print axioms cover_1050436

def state_1050435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 4)))
theorem cover_1050435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050435 := by
  apply coveredState_split_literal (state := state_1050435) 4
    state_1050436 state_1050527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050436
  · exact cover_1050527
#print axioms cover_1050435

def state_1050423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
theorem cover_1050423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050423 := by
  apply coveredState_split_literal (state := state_1050423) 2
    state_1050424 state_1050435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050424
  · exact cover_1050435
#print axioms cover_1050423

def state_1050323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1050323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050323 := by
  apply coveredState_split_literal (state := state_1050323) 3
    state_1050324 state_1050423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050324
  · exact cover_1050423
#print axioms cover_1050323

def state_1050535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_1050535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050535 := by
  apply coveredState_split_literal (state := state_1050535) 2
    state_1050536 state_1050539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050536
  · exact cover_1050539
#print axioms cover_1050535

def state_1050611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
theorem cover_1050611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050611 := by
  apply coveredState_split_literal (state := state_1050611) 0
    state_1050612 state_1050667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050612
  · exact cover_1050667
#print axioms cover_1050611

def state_1050610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 4)))
theorem cover_1050610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050610 := by
  apply coveredState_split_literal (state := state_1050610) 4
    state_1050611 state_1050678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1050611
  · exact cover_1050678
#print axioms cover_1050610
end Mub6.Numerical.CircleFullD0.Forest
