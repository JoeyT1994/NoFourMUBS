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
def state_2241767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 89) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 32)))
def hex_2241767 : String := "430A4440414206060A0640414205430A05050A"
theorem cover_2241767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241767 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2241767)
  decide +kernel
#print axioms cover_2241767

def state_2241786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 89) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 32)))
def hex_2241786 : String := "4344404142E70809414206050A4041080841080844404142060609064041424344E7084406070842430A050841420606420606"
theorem cover_2241786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241786 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_2241786)
  decide +kernel
#print axioms cover_2241786

def state_2241837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 33)))
def hex_2241837 : String := "4041424443404107054107420507070744430807074205444308414205080508414244434041070A0907074443080707420A4443084041080841080808"
theorem cover_2241837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241837 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2241837)
  decide +kernel
#print axioms cover_2241837

def state_2241899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 32)))
def hex_2241899 : String := "4041424344404107054107420506070743444240070709070742050941424344060706434406070642434406400506064344064041420606090606"
theorem cover_2241899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241899 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2241899)
  decide +kernel
#print axioms cover_2241899

def state_2241958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 33)))
def hex_2241958 : String := "404107054107420543444041070541074205060707"
theorem cover_2241958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_2241958)
  decide +kernel
#print axioms cover_2241958
end Mub6.Numerical.CircleFullD0.Forest
