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
def state_1657532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 21)))
def hex_1657532 : String := "40414308444241400643084406084006080608430844060808"
theorem cover_1657532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657532 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1657532)
  decide +kernel
#print axioms cover_1657532

def state_1657558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 20)))
def hex_1657558 : String := "424041090909400609"
theorem cover_1657558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657558 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1657558)
  decide +kernel
#print axioms cover_1657558

def state_1657570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 21)))
def hex_1657570 : String := "4443420741400607400607074342414044074342070807074044074308070741404406430806440708400644070807"
theorem cover_1657570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657570 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1657570)
  decide +kernel
#print axioms cover_1657570

def state_1657617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 21)))
def hex_1657617 : String := "4443420906064342404144070A06410705400608420706"
theorem cover_1657617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657617 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1657617)
  decide +kernel
#print axioms cover_1657617

def state_1657640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 21)))
def hex_1657640 : String := "4144074342074041070707074407430807"
theorem cover_1657640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657640 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1657640)
  decide +kernel
#print axioms cover_1657640

def state_1657657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 21)))
def hex_1657657 : String := "404144064342414006440606060606064144434240070740060706430807444342090606430806"
theorem cover_1657657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657657 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1657657)
  decide +kernel
#print axioms cover_1657657

def state_1657697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
def hex_1657697 : String := "43444240410A430A07064041430A0743440A084407074107430A074240410643064407060608440742074041070707"
theorem cover_1657697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657697 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1657697)
  decide +kernel
#print axioms cover_1657697

def state_1657744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
def hex_1657744 : String := "43444240410909094041434409080909090844094240410707074041440743080744070809"
theorem cover_1657744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657744 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1657744)
  decide +kernel
#print axioms cover_1657744
end Mub6.Numerical.CircleFullD0.Forest
