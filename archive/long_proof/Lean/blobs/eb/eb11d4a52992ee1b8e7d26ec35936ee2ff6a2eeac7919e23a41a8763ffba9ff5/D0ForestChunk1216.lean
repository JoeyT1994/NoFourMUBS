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
def state_1592231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 25)))
def hex_1592231 : String := "4244414340050906434006420A09060606"
theorem cover_1592231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592231 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1592231)
  decide +kernel
#print axioms cover_1592231

def state_1592254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 50)))
def hex_1592254 : String := "4244410943090841434007424409410907094007420A09434007420844070740070A44094109430707"
theorem cover_1592254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592254 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1592254)
  decide +kernel
#print axioms cover_1592254

def state_1592297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 100 else (if j.val < 4 then 56 else 100)))
def hex_1592297 : String := "414309094306400906"
theorem cover_1592297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592297 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1592297)
  decide +kernel
#print axioms cover_1592297

def state_1592306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 100 else (if j.val < 4 then 56 else 101)))
def hex_1592306 : String := "41434042440941090509420544060540420A09424443050905440943050943404244060544094109050540420A440941090A42054441060505"
theorem cover_1592306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592306 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 57) (hex := hex_1592306)
  decide +kernel
#print axioms cover_1592306

def state_1592363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 101 else (if j.val < 4 then 56 else 50)))
def hex_1592363 : String := "44410909414309400909434009420609400942440941090509"
theorem cover_1592363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592363 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1592363)
  decide +kernel
#print axioms cover_1592363

def state_1592389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 50)))
def hex_1592389 : String := "42440A0A4405410607"
theorem cover_1592389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1592389)
  decide +kernel
#print axioms cover_1592389

def state_1592398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 50)))
def hex_1592398 : String := "424441430909434009420A090A4143400A420A44090A0A43400A420A440A0A0A444109094143400909094340094244094109430909094009420A09"
theorem cover_1592398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1592398)
  decide +kernel
#print axioms cover_1592398

def state_1592459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 50)))
def hex_1592459 : String := "4244080844410908410707"
theorem cover_1592459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592459 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1592459)
  decide +kernel
#print axioms cover_1592459
end Mub6.Numerical.CircleFullD0.Forest
