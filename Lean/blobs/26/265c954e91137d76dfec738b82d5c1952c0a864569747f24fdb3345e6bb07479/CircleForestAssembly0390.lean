import CircleFullInterface
import CircleForestAssembly0389
import CircleForestChunk1518
import CircleForestChunk1519
import CircleForestChunk1520
import CircleForestChunk1521
import CircleForestChunk1522
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1665436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
theorem cover_1665436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665436 := by
  apply coveredState_split_literal (state := state_1665436) 1
    state_1665437 state_1665460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665437
  · exact cover_1665460
#print axioms cover_1665436

def state_1665426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 25)))
theorem cover_1665426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665426 := by
  apply coveredState_split_literal (state := state_1665426) 4
    state_1665427 state_1665436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665427
  · exact cover_1665436
#print axioms cover_1665426

def state_1665414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
theorem cover_1665414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665414 := by
  apply coveredState_split_literal (state := state_1665414) 2
    state_1665415 state_1665426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665415
  · exact cover_1665426
#print axioms cover_1665414

def state_1665386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
theorem cover_1665386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665386 := by
  apply coveredState_split_literal (state := state_1665386) 0
    state_1665387 state_1665414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665387
  · exact cover_1665414
#print axioms cover_1665386

def state_1665385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_1665385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665385 := by
  apply coveredState_split_literal (state := state_1665385) 3
    state_1665386 state_1665551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665386
  · exact cover_1665551
#print axioms cover_1665385

def state_1665367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_1665367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665367 := by
  apply coveredState_split_literal (state := state_1665367) 1
    state_1665368 state_1665385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665368
  · exact cover_1665385
#print axioms cover_1665367

def state_1665357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 12)))
theorem cover_1665357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665357 := by
  apply coveredState_split_literal (state := state_1665357) 4
    state_1665358 state_1665367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665358
  · exact cover_1665367
#print axioms cover_1665357

def state_1665345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
theorem cover_1665345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665345 := by
  apply coveredState_split_literal (state := state_1665345) 2
    state_1665346 state_1665357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665346
  · exact cover_1665357
#print axioms cover_1665345

def state_1665317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
theorem cover_1665317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665317 := by
  apply coveredState_split_literal (state := state_1665317) 0
    state_1665318 state_1665345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665318
  · exact cover_1665345
#print axioms cover_1665317

def state_1665316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_1665316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665316 := by
  apply coveredState_split_literal (state := state_1665316) 3
    state_1665317 state_1665568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665317
  · exact cover_1665568
#print axioms cover_1665316

def state_1665306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_1665306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665306 := by
  apply coveredState_split_literal (state := state_1665306) 1
    state_1665307 state_1665316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665307
  · exact cover_1665316
#print axioms cover_1665306

def state_1665305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_1665305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665305 := by
  apply coveredState_split_literal (state := state_1665305) 4
    state_1665306 state_1665583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665306
  · exact cover_1665583
#print axioms cover_1665305

def state_1665641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
theorem cover_1665641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665641 := by
  apply coveredState_split_literal (state := state_1665641) 1
    state_1665642 state_1665649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665642
  · exact cover_1665649
#print axioms cover_1665641

def state_1665640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_1665640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665640 := by
  apply coveredState_split_literal (state := state_1665640) 4
    state_1665641 state_1665712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665641
  · exact cover_1665712
#print axioms cover_1665640

def state_1665304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1665304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665304 := by
  apply coveredState_split_literal (state := state_1665304) 2
    state_1665305 state_1665640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665305
  · exact cover_1665640
#print axioms cover_1665304

def state_1665738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_1665738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665738 := by
  apply coveredState_split_literal (state := state_1665738) 4
    state_1665739 state_1665782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665739
  · exact cover_1665782
#print axioms cover_1665738

def state_1665846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_1665846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665846 := by
  apply coveredState_split_literal (state := state_1665846) 0
    state_1665847 state_1665908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665847
  · exact cover_1665908
#print axioms cover_1665846

def state_1665845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_1665845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665845 := by
  apply coveredState_split_literal (state := state_1665845) 3
    state_1665846 state_1665913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665846
  · exact cover_1665913
#print axioms cover_1665845

def state_1665839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_1665839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665839 := by
  apply coveredState_split_literal (state := state_1665839) 1
    state_1665840 state_1665845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665840
  · exact cover_1665845
#print axioms cover_1665839

def state_1665821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_1665821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665821 := by
  apply coveredState_split_literal (state := state_1665821) 4
    state_1665822 state_1665839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665822
  · exact cover_1665839
#print axioms cover_1665821

def state_1665737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1665737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665737 := by
  apply coveredState_split_literal (state := state_1665737) 2
    state_1665738 state_1665821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665738
  · exact cover_1665821
#print axioms cover_1665737

def state_1665303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1665303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665303 := by
  apply coveredState_split_literal (state := state_1665303) 0
    state_1665304 state_1665737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665304
  · exact cover_1665737
#print axioms cover_1665303

def state_1665302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_1665302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665302 := by
  apply coveredState_split_literal (state := state_1665302) 4
    state_1665303 state_1665922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665303
  · exact cover_1665922
#print axioms cover_1665302

def state_1666001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1666001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666001 := by
  apply coveredState_split_literal (state := state_1666001) 0
    state_1666002 state_1666055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666002
  · exact cover_1666055
#print axioms cover_1666001

def state_1665953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_1665953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665953 := by
  apply coveredState_split_literal (state := state_1665953) 4
    state_1665954 state_1666001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665954
  · exact cover_1666001
#print axioms cover_1665953

def state_1665301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1665301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665301 := by
  apply coveredState_split_literal (state := state_1665301) 3
    state_1665302 state_1665953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665302
  · exact cover_1665953
#print axioms cover_1665301

def state_1665300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1665300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665300 := by
  apply coveredState_split_literal (state := state_1665300) 2
    state_1665301 state_1666086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665301
  · exact cover_1666086
#print axioms cover_1665300

def state_1665228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1665228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665228 := by
  apply coveredState_split_literal (state := state_1665228) 1
    state_1665229 state_1665300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665229
  · exact cover_1665300
#print axioms cover_1665228

def state_1665227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1665227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665227 := by
  apply coveredState_split_literal (state := state_1665227) 0
    state_1665228 state_1666113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665228
  · exact cover_1666113
#print axioms cover_1665227

def state_1665117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1665117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665117 := by
  apply coveredState_split_literal (state := state_1665117) 4
    state_1665118 state_1665227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665118
  · exact cover_1665227
#print axioms cover_1665117

def state_1666196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_1666196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666196 := by
  apply coveredState_split_literal (state := state_1666196) 4
    state_1666197 state_1666224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666197
  · exact cover_1666224
#print axioms cover_1666196

def state_1666195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1666195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666195 := by
  apply coveredState_split_literal (state := state_1666195) 3
    state_1666196 state_1666275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666196
  · exact cover_1666275
#print axioms cover_1666195
end Mub6.Numerical.CircleFullD0.Forest
