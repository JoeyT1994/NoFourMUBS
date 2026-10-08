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
def state_1589147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 101 else (if j.val < 4 then 55 else 51)))
def hex_1589147 : String := "4441400709400743070741400643070607"
theorem cover_1589147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1589147)
  decide +kernel
#print axioms cover_1589147

def state_1589164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 37) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
def hex_1589164 : String := "43424441404305080505054408084244414308404244080508084340420544050505404205440905054143054042050805054441084308084108430808"
theorem cover_1589164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589164 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1589164)
  decide +kernel
#print axioms cover_1589164

def state_1589225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 51 else (if j.val < 4 then 27 else 25)))
def hex_1589225 : String := "44410940090941404308080840430A4244090707430808"
theorem cover_1589225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589225 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1589225)
  decide +kernel
#print axioms cover_1589225

def state_1589252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 50)))
def hex_1589252 : String := "43424406410606440941090742444109400906414043070743094244094109070940074306424406070944094109400709"
theorem cover_1589252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589252 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1589252)
  decide +kernel
#print axioms cover_1589252

def state_1589301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 50)))
def hex_1589301 : String := "430642440641430640420609060644410906414306094306400906"
theorem cover_1589301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1589301)
  decide +kernel
#print axioms cover_1589301

def state_1589328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 50)))
def hex_1589328 : String := "4043064244414008060641400743060808444109400706410707430642064406410606"
theorem cover_1589328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589328 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1589328)
  decide +kernel
#print axioms cover_1589328
end Mub6.Numerical.CircleFullD0.Forest
