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
def state_2565564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_2565564 : String := "4342414440064307060A07410A440705420706"
theorem cover_2565564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565564 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2565564)
  decide +kernel
#print axioms cover_2565564

def state_2565587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 94)))
def hex_2565587 : String := "40434208084207410607430842414440074308420707400808440740074308074144400608400808444007430807404308074308420808"
theorem cover_2565587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565587 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2565587)
  decide +kernel
#print axioms cover_2565587

def state_2565642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 95)))
def hex_2565642 : String := "40430842410A050A430842E241084440080808"
theorem cover_2565642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2565642)
  decide +kernel
#print axioms cover_2565642

def state_2565661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 47)))
def hex_2565661 : String := "44404307074342410807410844070842074144074007430807074043050543420808424441400543060705054441400543084207080505"
theorem cover_2565661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565661 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2565661)
  decide +kernel
#print axioms cover_2565661

def state_2565717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 96) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 47)))
def hex_2565717 : String := "4440434208060643084241064406400643080606400A4308424108444008080809"
theorem cover_2565717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565717 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2565717)
  decide +kernel
#print axioms cover_2565717

def state_2565752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
def hex_2565752 : String := "43424144070807410607420706"
theorem cover_2565752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565752 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2565752)
  decide +kernel
#print axioms cover_2565752

def state_2565765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
def hex_2565765 : String := "43424108444007080841084408084241444006430806404307064308420706440740054307074144060944400643420706064005430909"
theorem cover_2565765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565765 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_2565765)
  decide +kernel
#print axioms cover_2565765
end Mub6.Numerical.CircleFullD0.Forest
