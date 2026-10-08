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
def state_1623521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 67)))
def hex_1623521 : String := "40444341420640070742054007054142400806400808420A400A4443410505080A4341420509054142060A0A4443054142054008054205054305410505"
theorem cover_1623521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623521 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1623521)
  decide +kernel
#print axioms cover_1623521

def state_1623582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 211 else (if j.val < 4 then 193 else 67)))
def hex_1623582 : String := "4044430741420807424007440743070A07434107074142400944080A07420A0744430741424008050742404407050507430541420507420505"
theorem cover_1623582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1623582)
  decide +kernel
#print axioms cover_1623582

def state_1623639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 105 else (if j.val < 4 then 193 else 67)))
def hex_1623639 : String := "42404443414205050541420A0A0A43050A054044430741424006440705060643410705410A0A444305414205070505"
theorem cover_1623639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1623639)
  decide +kernel
#print axioms cover_1623639

def state_1623687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
def hex_1623687 : String := "424044084341084207080844084341064206080840440843410842080808440843410842080808"
theorem cover_1623687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623687 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_1623687)
  decide +kernel
#print axioms cover_1623687

def state_1623728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 97 else 33)))
def hex_1623728 : String := "444341420A400A44080A0A0A0A"
theorem cover_1623728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623728 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1623728)
  decide +kernel
#print axioms cover_1623728
end Mub6.Numerical.CircleFullD0.Forest
