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
def state_1011435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 45)))
def hex_1011435 : String := "4443410642090541424044434106090A430608060642094044050906434106424044090606064142404443060806060642400A09400A06"
theorem cover_1011435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011435 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1011435)
  decide +kernel
#print axioms cover_1011435

def state_1011490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 45)))
def hex_1011490 : String := "42400A440709404443050A0A440943094142090909"
theorem cover_1011490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011490 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1011490)
  decide +kernel
#print axioms cover_1011490

def state_1011511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
def hex_1011511 : String := "44434142090607414207404407430607060743414240444306094306060606420909414240444309074341060908440708404443064106090606420709"
theorem cover_1011511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1011511)
  decide +kernel
#print axioms cover_1011511

def state_1011572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 22)))
def hex_1011572 : String := "4044430505434106054142404405430542410605050605054443064106054306410642404405060605"
theorem cover_1011572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011572 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1011572)
  decide +kernel
#print axioms cover_1011572

def state_1011613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
def hex_1011613 : String := "424044430807434142090508414209090744070940054405430505"
theorem cover_1011613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011613 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1011613)
  decide +kernel
#print axioms cover_1011613
end Mub6.Numerical.CircleFullD0.Forest
