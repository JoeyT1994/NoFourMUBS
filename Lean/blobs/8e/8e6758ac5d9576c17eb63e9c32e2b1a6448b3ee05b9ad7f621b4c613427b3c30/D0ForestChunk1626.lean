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
def state_2263455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 110)))
def hex_2263455 : String := "4043424105440507054241BE4440074305420A0540074307420641050741054405094305424105404405430542064105064405430542060505"
theorem cover_2263455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263455 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2263455)
  decide +kernel
#print axioms cover_2263455

def state_2263513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 111)))
def hex_2263513 : String := "4342410807410544050742414440430708080807414405404305090844094007430706"
theorem cover_2263513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263513 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_2263513)
  decide +kernel
#print axioms cover_2263513

def state_2263548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 111)))
def hex_2263548 : String := "4342410544050805424108444006060641054440430542410506050540434206050608"
theorem cover_2263548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263548 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2263548)
  decide +kernel
#print axioms cover_2263548

def state_2263583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 90 else 55)))
def hex_2263583 : String := "41054405404305424105090505"
theorem cover_2263583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263583 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2263583)
  decide +kernel
#print axioms cover_2263583

def state_2263599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
def hex_2263599 : String := "404342BE0542BE4105440740434241054405090542410744070607074342BE0507"
theorem cover_2263599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263599 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 33) (hex := hex_2263599)
  decide +kernel
#print axioms cover_2263599

def state_2263632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 111)))
def hex_2263632 : String := "40434208410544404305420805050842410806410A444043424106060A0A434206050706430842084107440706"
theorem cover_2263632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263632 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2263632)
  decide +kernel
#print axioms cover_2263632
end Mub6.Numerical.CircleFullD0.Forest
