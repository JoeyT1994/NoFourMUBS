import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1503183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 209 else 118)))
def hex_1503183 : String := "4144420505424043410905050540430A410A44050A430741070544054205404341440507050505"
theorem cover_1503183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503183 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1503183)
  decide +kernel
#print axioms cover_1503183

def state_1503222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 118)))
def hex_1503222 : String := "4341444205070944054205074144050905"
theorem cover_1503222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503222 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1503222)
  decide +kernel
#print axioms cover_1503222

def state_1503239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 118)))
def hex_1503239 : String := "4043410707410707430707"
theorem cover_1503239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1503239)
  decide +kernel
#print axioms cover_1503239

def state_1503253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 119)))
def hex_1503253 : String := "414442090A09444240434109094109444205050909400A430741070742090A"
theorem cover_1503253 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503253 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1503253)
  decide +kernel
#print axioms cover_1503253

def state_1503284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 209 else 119)))
def hex_1503284 : String := "41444206400A090644424043410944054205094105054309054043410A444205070A410A4405420507434109440709410944054205074206400A430906"
theorem cover_1503284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503284 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1503284)
  decide +kernel
#print axioms cover_1503284

def state_1503345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
def hex_1503345 : String := "4341090941064442050906"
theorem cover_1503345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503345 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1503345)
  decide +kernel
#print axioms cover_1503345

def state_1503356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 119)))
def hex_1503356 : String := "40430A410A42444007070A0743410707410707"
theorem cover_1503356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503356 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1503356)
  decide +kernel
#print axioms cover_1503356

def state_1503376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 84) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 59)))
def hex_1503376 : String := "4442404341444205400A060644054205400A064106440506064043410707410A424405070743074107074206400A06"
theorem cover_1503376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503376 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1503376)
  decide +kernel
#print axioms cover_1503376
end Mub6.Numerical.CircleFullD0.Forest
