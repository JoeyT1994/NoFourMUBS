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
def state_1597587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 59 else 99)))
def hex_1597587 : String := "4041434406420640090644420A400909420A400A41090A4306444206400806420840080A414306440642060706"
theorem cover_1597587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597587 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1597587)
  decide +kernel
#print axioms cover_1597587

def state_1597633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 99)))
def hex_1597633 : String := "414309094344420609424043064109060640099F444240410508410906094240410908414344064206094409420A0943060A40099F"
theorem cover_1597633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1597633)
  decide +kernel
#print axioms cover_1597633

def state_1597686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 99)))
def hex_1597686 : String := "4143440642060844420707424041070706094306444206404106060642069F"
theorem cover_1597686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597686 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1597686)
  decide +kernel
#print axioms cover_1597686

def state_1597717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 49)))
def hex_1597717 : String := "44420640430641440808080642404306080640434144064206404306414406420609060606414442084008430608420840089F084306410606"
theorem cover_1597717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597717 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 57) (hex := hex_1597717)
  decide +kernel
#print axioms cover_1597717

def state_1597774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
def hex_1597774 : String := "4306444208400806420840084143064406420640080606"
theorem cover_1597774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597774 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_1597774)
  decide +kernel
#print axioms cover_1597774
end Mub6.Numerical.CircleFullD0.Forest
