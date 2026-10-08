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
def state_1496299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 119)))
def hex_1496299 : String := "40434142070606410707434142440707444006430641420706064043070743410908410707420744064006430807414207444006430A074007074207440607"
theorem cover_1496299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1496299)
  decide +kernel
#print axioms cover_1496299

def state_1496362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 59)))
def hex_1496362 : String := "4406400643414244064006080606414244064006434142440607060641420744064006094207060606"
theorem cover_1496362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496362 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 41) (hex := hex_1496362)
  decide +kernel
#print axioms cover_1496362

def state_1496405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 103 else 59)))
def hex_1496405 : String := "444043414205440507420506410505434142050505054043410707074341420744400709074207440707410707"
theorem cover_1496405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1496405)
  decide +kernel
#print axioms cover_1496405

def state_1496451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 118)))
def hex_1496451 : String := "4043064144064240064306050606434144064240430641440542050605434109050506440642400605064144054205400643414405420506050588"
theorem cover_1496451 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496451 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1496451)
  decide +kernel
#print axioms cover_1496451
end Mub6.Numerical.CircleFullD0.Forest
