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
def state_1014482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 43)))
def hex_1014482 : String := "4340424409410905090A4042440909094244090909"
theorem cover_1014482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014482 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1014482)
  decide +kernel
#print axioms cover_1014482

def state_1014503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 43)))
def hex_1014503 : String := "430540424405414305404405424109050544054241430509050505054244054143054044054241430509050544054207050505"
theorem cover_1014503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014503 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1014503)
  decide +kernel
#print axioms cover_1014503

def state_1014555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
def hex_1014555 : String := "42440641434006440642064106060606444109064143404244060707420909400642060943400642060806"
theorem cover_1014555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1014555)
  decide +kernel
#print axioms cover_1014555

def state_1014599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 21)))
def hex_1014599 : String := "4441434006070606414340444206094241050641054340064409420609064442070942084105434044080807054006054340440642064106060706"
theorem cover_1014599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014599 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1014599)
  decide +kernel
#print axioms cover_1014599

def state_1014659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 42)))
def hex_1014659 : String := "410943404206080706"
theorem cover_1014659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1014659)
  decide +kernel
#print axioms cover_1014659

def state_1014669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 43)))
def hex_1014669 : String := "43404209090909"
theorem cover_1014669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1014669)
  decide +kernel
#print axioms cover_1014669

def state_1014679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 43)))
def hex_1014679 : String := "444106064143404406420641090644420609424109064109430540064405054006440642064109064340050506"
theorem cover_1014679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_1014679)
  decide +kernel
#print axioms cover_1014679
end Mub6.Numerical.CircleFullD0.Forest
