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
def state_1048501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_1048501 : String := "404142434406404142434405080643094406064243090609410606064309440640414309060906424309440606094142060909"
theorem cover_1048501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048501 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1048501)
  decide +kernel
#print axioms cover_1048501

def state_1048555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 15)))
def hex_1048555 : String := "43444041084243444041080508084440410806060843094409080808444041420808420643440608060640410842080808"
theorem cover_1048555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1048555)
  decide +kernel
#print axioms cover_1048555

def state_1048604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 15)))
def hex_1048604 : String := "43444041080908084440414308084342440908074206440607410843080640410843080808"
theorem cover_1048604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048604 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1048604)
  decide +kernel
#print axioms cover_1048604

def state_1048644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
def hex_1048644 : String := "404142430944094041424308060909410606090909"
theorem cover_1048644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048644 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1048644)
  decide +kernel
#print axioms cover_1048644

def state_1048667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
def hex_1048667 : String := "42434440410809080844404108424344090844404108090608090840410842080808430944094041070708"
theorem cover_1048667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048667 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1048667)
  decide +kernel
#print axioms cover_1048667

def state_1048710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
def hex_1048710 : String := "42430944094041424344090A4440414208080941080940410884080909414208080909"
theorem cover_1048710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048710 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1048710)
  decide +kernel
#print axioms cover_1048710

def state_1048745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
def hex_1048745 : String := "4142080809"
theorem cover_1048745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048745 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1048745)
  decide +kernel
#print axioms cover_1048745
end Mub6.Numerical.CircleFullD0.Forest
