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
def state_1608918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
def hex_1608918 : String := "40420805424344414005420805084140074243444140070908410707084344410507070640074208434408070644084106064344050606"
theorem cover_1608918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1608918)
  decide +kernel
#print axioms cover_1608918

def state_1608973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
def hex_1608973 : String := "4008420843444140054208050841070706"
theorem cover_1608973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608973 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1608973)
  decide +kernel
#print axioms cover_1608973

def state_1608990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 24)))
def hex_1608990 : String := "4441050806"
theorem cover_1608990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608990 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1608990)
  decide +kernel
#print axioms cover_1608990

def state_1608996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_1608996 : String := "420806"
theorem cover_1608996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1608996)
  decide +kernel
#print axioms cover_1608996

def state_1608999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_1608999 : String := "42434144400842084344080908400709440808414408080843414440064243444140064207064006420707070606074440064243414407070808060706"
theorem cover_1608999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1608999)
  decide +kernel
#print axioms cover_1608999

def state_1609060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_1609060 : String := "44084008420843414440064208070744080706"
theorem cover_1609060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1609060)
  decide +kernel
#print axioms cover_1609060

def state_1609079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_1609079 : String := "434140074205074007054140074209074007420507"
theorem cover_1609079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 21) (hex := hex_1609079)
  decide +kernel
#print axioms cover_1609079

def state_1609104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
def hex_1609104 : String := "4042440605444143064406404206430641440640420641060606060606414305404205444341060541444042054108430544060505050505050506"
theorem cover_1609104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 59) (hex := hex_1609104)
  decide +kernel
#print axioms cover_1609104
end Mub6.Numerical.CircleFullD0.Forest
