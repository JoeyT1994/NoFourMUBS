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
def state_1543479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 9)))
def hex_1543479 : String := "4341440640414406424305400A06050606064144064043410A44060A0A43060A44064043060706"
theorem cover_1543479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1543479)
  decide +kernel
#print axioms cover_1543479

def state_1543518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 4)))
def hex_1543518 : String := "4405404207430607420606"
theorem cover_1543518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543518 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1543518)
  decide +kernel
#print axioms cover_1543518

def state_1543529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_1543529 : String := "41440540434207070743424144050A05410A070705"
theorem cover_1543529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1543529)
  decide +kernel
#print axioms cover_1543529

def state_1543550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_1543550 : String := "424341440842084043080908080943414406404243084144060906064208060641440643404209410A0609094405430607"
theorem cover_1543550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543550 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1543550)
  decide +kernel
#print axioms cover_1543550

def state_1543606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 10)))
def hex_1543606 : String := "4344414006420941064344070607074106400642440709444143400609060741064340060906440706"
theorem cover_1543606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543606 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1543606)
  decide +kernel
#print axioms cover_1543606

def state_1543651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
def hex_1543651 : String := "42410643440606064106434440064207414344070606070606"
theorem cover_1543651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543651 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1543651)
  decide +kernel
#print axioms cover_1543651

def state_1543677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 20)))
def hex_1543677 : String := "41434440060906064344400742074143080707400642094143060643440840060809440706"
theorem cover_1543677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543677 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1543677)
  decide +kernel
#print axioms cover_1543677
end Mub6.Numerical.CircleFullD0.Forest
