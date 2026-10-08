import CircleFullInterface
import CircleForestAssembly0206
import CircleForestChunk0780
import CircleForestChunk0781
import CircleForestChunk0782
import CircleForestChunk0783
import CircleForestChunk0784
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1486775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1486775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486775 := by
  apply coveredState_split_literal (state := state_1486775) 0
    state_1486776 state_1488155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486776
  · exact cover_1488155
#print axioms cover_1486775

def state_1488272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 56)))
theorem cover_1488272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488272 := by
  apply coveredState_split_literal (state := state_1488272) 2
    state_1488273 state_1488334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488273
  · exact cover_1488334
#print axioms cover_1488272

def state_1488271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 28)))
theorem cover_1488271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488271 := by
  apply coveredState_split_literal (state := state_1488271) 4
    state_1488272 state_1488341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488272
  · exact cover_1488341
#print axioms cover_1488271

def state_1488263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 28)))
theorem cover_1488263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488263 := by
  apply coveredState_split_literal (state := state_1488263) 1
    state_1488264 state_1488271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488264
  · exact cover_1488271
#print axioms cover_1488263

def state_1488253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
theorem cover_1488253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488253 := by
  apply coveredState_split_literal (state := state_1488253) 3
    state_1488254 state_1488263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488254
  · exact cover_1488263
#print axioms cover_1488253

def state_1488235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
theorem cover_1488235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488235 := by
  apply coveredState_split_literal (state := state_1488235) 0
    state_1488236 state_1488253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488236
  · exact cover_1488253
#print axioms cover_1488235

def state_1488234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 14)))
theorem cover_1488234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488234 := by
  apply coveredState_split_literal (state := state_1488234) 4
    state_1488235 state_1488346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488235
  · exact cover_1488346
#print axioms cover_1488234

def state_1488232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 14)))
theorem cover_1488232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488232 := by
  apply coveredState_split_literal (state := state_1488232) 1
    state_1488233 state_1488234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488233
  · exact cover_1488234
#print axioms cover_1488232

def state_1488231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1488231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488231 := by
  apply coveredState_split_literal (state := state_1488231) 2
    state_1488232 state_1488347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488232
  · exact cover_1488347
#print axioms cover_1488231

def state_1488229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1488229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488229 := by
  apply coveredState_split_literal (state := state_1488229) 3
    state_1488230 state_1488231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488230
  · exact cover_1488231
#print axioms cover_1488229

def state_1488228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1488228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488228 := by
  apply coveredState_split_literal (state := state_1488228) 0
    state_1488229 state_1488348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488229
  · exact cover_1488348
#print axioms cover_1488228

def state_1488227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 7)))
theorem cover_1488227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488227 := by
  apply coveredState_split_literal (state := state_1488227) 4
    state_1488228 state_1488385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488228
  · exact cover_1488385
#print axioms cover_1488227

def state_1488225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 7)))
theorem cover_1488225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488225 := by
  apply coveredState_split_literal (state := state_1488225) 1
    state_1488226 state_1488227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488226
  · exact cover_1488227
#print axioms cover_1488225

def state_1488481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 28)))
theorem cover_1488481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488481 := by
  apply coveredState_split_literal (state := state_1488481) 4
    state_1488482 state_1488545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488482
  · exact cover_1488545
#print axioms cover_1488481

def state_1488552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 56)))
theorem cover_1488552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488552 := by
  apply coveredState_split_literal (state := state_1488552) 0
    state_1488553 state_1488594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488553
  · exact cover_1488594
#print axioms cover_1488552

def state_1488551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 56)))
theorem cover_1488551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488551 := by
  apply coveredState_split_literal (state := state_1488551) 2
    state_1488552 state_1488637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488552
  · exact cover_1488637
#print axioms cover_1488551

def state_1488550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 28)))
theorem cover_1488550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488550 := by
  apply coveredState_split_literal (state := state_1488550) 4
    state_1488551 state_1488656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488551
  · exact cover_1488656
#print axioms cover_1488550

def state_1488480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 28)))
theorem cover_1488480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488480 := by
  apply coveredState_split_literal (state := state_1488480) 1
    state_1488481 state_1488550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488481
  · exact cover_1488550
#print axioms cover_1488480

def state_1488685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 28)))
theorem cover_1488685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488685 := by
  apply coveredState_split_literal (state := state_1488685) 1
    state_1488686 state_1488713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488686
  · exact cover_1488713
#print axioms cover_1488685

def state_1488479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
theorem cover_1488479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488479 := by
  apply coveredState_split_literal (state := state_1488479) 3
    state_1488480 state_1488685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488480
  · exact cover_1488685
#print axioms cover_1488479

def state_1488443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
theorem cover_1488443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488443 := by
  apply coveredState_split_literal (state := state_1488443) 0
    state_1488444 state_1488479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488444
  · exact cover_1488479
#print axioms cover_1488443

def state_1488442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1488442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488442 := by
  apply coveredState_split_literal (state := state_1488442) 4
    state_1488443 state_1488768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488443
  · exact cover_1488768
#print axioms cover_1488442

def state_1488412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1488412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488412 := by
  apply coveredState_split_literal (state := state_1488412) 1
    state_1488413 state_1488442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488413
  · exact cover_1488442
#print axioms cover_1488412

def state_1488411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 14)))
theorem cover_1488411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488411 := by
  apply coveredState_split_literal (state := state_1488411) 3
    state_1488412 state_1488787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488412
  · exact cover_1488787
#print axioms cover_1488411

def state_1488410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1488410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488410 := by
  apply coveredState_split_literal (state := state_1488410) 2
    state_1488411 state_1488818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488411
  · exact cover_1488818
#print axioms cover_1488410

def state_1488887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
theorem cover_1488887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488887 := by
  apply coveredState_split_literal (state := state_1488887) 3
    state_1488888 state_1488947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488888
  · exact cover_1488947
#print axioms cover_1488887

def state_1488886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
theorem cover_1488886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488886 := by
  apply coveredState_split_literal (state := state_1488886) 0
    state_1488887 state_1488980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488887
  · exact cover_1488980
#print axioms cover_1488886

def state_1488885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1488885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488885 := by
  apply coveredState_split_literal (state := state_1488885) 4
    state_1488886 state_1488991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488886
  · exact cover_1488991
#print axioms cover_1488885

def state_1488869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1488869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488869 := by
  apply coveredState_split_literal (state := state_1488869) 1
    state_1488870 state_1488885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488870
  · exact cover_1488885
#print axioms cover_1488869

def state_1488868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 14)))
theorem cover_1488868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488868 := by
  apply coveredState_split_literal (state := state_1488868) 3
    state_1488869 state_1489002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488869
  · exact cover_1489002
#print axioms cover_1488868

def state_1489019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 14)))
theorem cover_1489019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489019 := by
  apply coveredState_split_literal (state := state_1489019) 3
    state_1489020 state_1489067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489020
  · exact cover_1489067
#print axioms cover_1489019

def state_1488867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1488867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488867 := by
  apply coveredState_split_literal (state := state_1488867) 2
    state_1488868 state_1489019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488868
  · exact cover_1489019
#print axioms cover_1488867
end Mub6.Numerical.CircleFullD0.Forest
