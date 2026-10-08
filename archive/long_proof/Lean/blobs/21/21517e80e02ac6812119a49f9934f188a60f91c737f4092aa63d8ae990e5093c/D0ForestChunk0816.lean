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
def state_1496511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
def hex_1496511 : String := "4341424440064341070607400743070744060A424406070641420844400643064108064008430A0842074406400688"
theorem cover_1496511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1496511)
  decide +kernel
#print axioms cover_1496511

def state_1496561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 162 else (if j.val < 4 then 206 else 119)))
def hex_1496561 : String := "444043414207440609420706414207440707074309410942070940434107070709"
theorem cover_1496561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496561 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1496561)
  decide +kernel
#print axioms cover_1496561

def state_1496594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 119)))
def hex_1496594 : String := "444043064144060A0643410944064209064144420906094442400609064209400609400A430A4109420909"
theorem cover_1496594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496594 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1496594)
  decide +kernel
#print axioms cover_1496594

def state_1496638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 173) else (if j.val < 3 then 162 else (if j.val < 4 then 206 else 119)))
def hex_1496638 : String := "444043414207060641070643414209440609420506414205440540070542050540434107070743410942074440070707410707"
theorem cover_1496638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496638 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1496638)
  decide +kernel
#print axioms cover_1496638

def state_1496690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 173) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 238)))
def hex_1496690 : String := "40064306414406424006090606"
theorem cover_1496690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496690 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1496690)
  decide +kernel
#print axioms cover_1496690

def state_1496704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 398 else 173) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 239)))
def hex_1496704 : String := "43414244060A060641424406070606"
theorem cover_1496704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496704 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1496704)
  decide +kernel
#print axioms cover_1496704
end Mub6.Numerical.CircleFullD0.Forest
