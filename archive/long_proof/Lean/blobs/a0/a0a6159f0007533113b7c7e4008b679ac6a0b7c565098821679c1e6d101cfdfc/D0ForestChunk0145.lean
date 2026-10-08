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
def state_972274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 56 else (if j.val < 4 then 39 else 55)))
def hex_972274 : String := "4041424344400709074440084105060543074440070907424307440A070741424344094041430905090944060543094409404142050909094243090609"
theorem cover_972274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972274 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_972274)
  decide +kernel
#print axioms cover_972274

def state_972335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 57 else (if j.val < 4 then 19 else 27)))
def hex_972335 : String := "43094409400709"
theorem cover_972335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972335 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_972335)
  decide +kernel
#print axioms cover_972335

def state_972342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
def hex_972342 : String := "424309440940070909"
theorem cover_972342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972342 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_972342)
  decide +kernel
#print axioms cover_972342

def state_972351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
def hex_972351 : String := "4142430944064041424309060909060909"
theorem cover_972351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972351 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_972351)
  decide +kernel
#print axioms cover_972351

def state_972368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 9 else 27)))
def hex_972368 : String := "09"
theorem cover_972368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972368 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_972368)
  decide +kernel
#print axioms cover_972368

def state_972369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
def hex_972369 : String := "09"
theorem cover_972369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972369 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_972369)
  decide +kernel
#print axioms cover_972369

def state_972370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 13)))
def hex_972370 : String := "05"
theorem cover_972370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972370 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_972370)
  decide +kernel
#print axioms cover_972370

def state_972372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_972372 : String := "07"
theorem cover_972372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972372 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_972372)
  decide +kernel
#print axioms cover_972372

def state_972376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 7)))
def hex_972376 : String := "06"
theorem cover_972376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972376 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_972376)
  decide +kernel
#print axioms cover_972376

def state_972379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 14)))
def hex_972379 : String := "41064243064440064106070506"
theorem cover_972379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_972379)
  decide +kernel
#print axioms cover_972379

def state_972392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 14)))
def hex_972392 : String := "410A42430A4440410A42434440070A06444005410542050A0543064440070A070A0A4306444041064306444240060A06060A0A"
theorem cover_972392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 51) (hex := hex_972392)
  decide +kernel
#print axioms cover_972392

def state_972443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 15)))
def hex_972443 : String := "40060A"
theorem cover_972443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972443 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_972443)
  decide +kernel
#print axioms cover_972443

def state_972446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 7)))
def hex_972446 : String := "4306444006410643064442400606060606"
theorem cover_972446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972446 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_972446)
  decide +kernel
#print axioms cover_972446

def state_972465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 7)))
def hex_972465 : String := "4440074142440906060706"
theorem cover_972465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972465 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_972465)
  decide +kernel
#print axioms cover_972465

def state_972478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 14)))
def hex_972478 : String := "07"
theorem cover_972478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972478 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_972478)
  decide +kernel
#print axioms cover_972478

def state_972482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 18 else 14)))
def hex_972482 : String := "44400741090907"
theorem cover_972482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972482 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_972482)
  decide +kernel
#print axioms cover_972482

def state_972491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 28)))
def hex_972491 : String := "414243074440074142054307054243070507070707"
theorem cover_972491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_972491)
  decide +kernel
#print axioms cover_972491
end Mub6.Numerical.CircleFullD0.Forest
