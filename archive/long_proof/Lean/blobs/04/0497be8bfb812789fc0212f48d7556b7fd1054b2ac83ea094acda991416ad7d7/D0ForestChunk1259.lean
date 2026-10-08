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
def state_1602615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 99)))
def hex_1602615 : String := "4142430A440A400A0A0A424344400A0640410A0A0644404142430A44050A0542080A410A0A404142430A440A40070A0A42434408400706080A410A42090A0A"
theorem cover_1602615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1602615)
  decide +kernel
#print axioms cover_1602615

def state_1602679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 49)))
def hex_1602679 : String := "43064408400841420643060806"
theorem cover_1602679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1602679)
  decide +kernel
#print axioms cover_1602679

def state_1602693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 58 else 49)))
def hex_1602693 : String := "44404142060A420643064408414008060806404142430644400806400706430A440A0742064306444140070608074142060A06"
theorem cover_1602693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1602693)
  decide +kernel
#print axioms cover_1602693

def state_1602745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 98)))
def hex_1602745 : String := "404142080508414243064408400806430A440540050A4208434406404106060644084008410A08"
theorem cover_1602745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602745 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1602745)
  decide +kernel
#print axioms cover_1602745

def state_1602785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 99)))
def hex_1602785 : String := "41424344084007414208070808434440070A074440054105050742084344080708"
theorem cover_1602785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602785 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1602785)
  decide +kernel
#print axioms cover_1602785

def state_1602819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 86) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 99)))
def hex_1602819 : String := "42434406404106060644400841060640414208430A080809430A444041050A0A40410A4207070A"
theorem cover_1602819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602819 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1602819)
  decide +kernel
#print axioms cover_1602819
end Mub6.Numerical.CircleFullD0.Forest
