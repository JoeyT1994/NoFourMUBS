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
def state_1588650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 75) else (if j.val < 3 then 99 else (if j.val < 4 then 55 else 102)))
def hex_1588650 : String := "4043424441400705050507420A0743054205444143050A0505"
theorem cover_1588650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588650 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1588650)
  decide +kernel
#print axioms cover_1588650

def state_1588675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 99 else (if j.val < 4 then 55 else 103)))
def hex_1588675 : String := "414043420507420A074305054043050705"
theorem cover_1588675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588675 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1588675)
  decide +kernel
#print axioms cover_1588675

def state_1588692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
def hex_1588692 : String := "4305420544414305050505"
theorem cover_1588692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588692 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1588692)
  decide +kernel
#print axioms cover_1588692

def state_1588704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 25)))
def hex_1588704 : String := "4441060505"
theorem cover_1588704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588704 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1588704)
  decide +kernel
#print axioms cover_1588704

def state_1588710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
def hex_1588710 : String := "41404306424406414008050544414008060641404308084306420644064143050905400806064043060806"
theorem cover_1588710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588710 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 43) (hex := hex_1588710)
  decide +kernel
#print axioms cover_1588710

def state_1588753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
def hex_1588753 : String := "414043420544050542054441404307070540080505054043050505"
theorem cover_1588753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1588753)
  decide +kernel
#print axioms cover_1588753

def state_1588780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 25)))
def hex_1588780 : String := "430641420544060506"
theorem cover_1588780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588780 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1588780)
  decide +kernel
#print axioms cover_1588780

def state_1588790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 24)))
def hex_1588790 : String := "40434144094206090641440942410940090909444241060609424140430609064043064406420609064109400909430641440942060806"
theorem cover_1588790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588790 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1588790)
  decide +kernel
#print axioms cover_1588790

def state_1588847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 25)))
def hex_1588847 : String := "4142444306414009064042060906430A414042440A0A08084042440A0A0A0A0A4244064306414042440505070505440A0A"
theorem cover_1588847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588847 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1588847)
  decide +kernel
#print axioms cover_1588847
end Mub6.Numerical.CircleFullD0.Forest
