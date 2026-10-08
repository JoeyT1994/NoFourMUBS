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
def state_967532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 14)))
def hex_967532 : String := "44430540414207440743400905074205440507074340410805054041084207444305070907"
theorem cover_967532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967532 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_967532)
  decide +kernel
#print axioms cover_967532

def state_967571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 28)))
def hex_967571 : String := "40414205050505"
theorem cover_967571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967571 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_967571)
  decide +kernel
#print axioms cover_967571

def state_967581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 28)))
def hex_967581 : String := "44430540414209440A4305090A4107054340410842050508404109420944430509084108420708"
theorem cover_967581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967581 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_967581)
  decide +kernel
#print axioms cover_967581

def state_967622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 56)))
def hex_967622 : String := "05"
theorem cover_967622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_967622)
  decide +kernel
#print axioms cover_967622

def state_967624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
def hex_967624 : String := "41424443050A43054041090A4108420505444305400A05430540414208440A07420A0A410842050542440543050A4405430541400A0505"
theorem cover_967624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967624 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_967624)
  decide +kernel
#print axioms cover_967624

def state_967679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
def hex_967679 : String := "4142440508440543050805"
theorem cover_967679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_967679)
  decide +kernel
#print axioms cover_967679

def state_967690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 57)))
def hex_967690 : String := "4340410842050541080540414208444308080842444305414009080A4308084443054140420A0708400A054308410840070841084208440508"
theorem cover_967690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967690 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_967690)
  decide +kernel
#print axioms cover_967690
end Mub6.Numerical.CircleFullD0.Forest
