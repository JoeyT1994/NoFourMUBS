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
def state_988605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 102 else 87)))
def hex_988605 : String := "4142404307444107080743440A0644410A4240430844080A0A0A410642400705064007064240084308440841424043084408074308440A05080808"
theorem cover_988605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_988605)
  decide +kernel
#print axioms cover_988605

def state_988670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 172)))
def hex_988670 : String := "41424043084408414240064307060706434408410A08444142404308060A080841424043440807C60A404307090A4240064308C6084008430844080808"
theorem cover_988670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_988670)
  decide +kernel
#print axioms cover_988670

def state_988732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 216) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 173)))
def hex_988732 : String := "424043074441074206070743444107080744414240070507424043080643440805C6400843080A4107420507400743074441070807"
theorem cover_988732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_988732)
  decide +kernel
#print axioms cover_988732

def state_988785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 217) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 173)))
def hex_988785 : String := "4240084308440841424006430805080808"
theorem cover_988785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988785 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_988785)
  decide +kernel
#print axioms cover_988785

def state_988805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 216) else (if j.val < 3 then 140 else (if j.val < 4 then 207 else 172)))
def hex_988805 : String := "40434406C6064344414240064344060A06404344060806430A0A42064006430806C6444142064006434406090606C6"
theorem cover_988805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988805 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_988805)
  decide +kernel
#print axioms cover_988805
end Mub6.Numerical.CircleFullD0.Forest
