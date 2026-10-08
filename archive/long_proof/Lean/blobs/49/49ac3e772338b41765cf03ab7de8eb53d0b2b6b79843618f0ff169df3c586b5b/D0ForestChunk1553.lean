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
def state_2246235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 12)))
def hex_2246235 : String := "410943440A084440420743444108070844410807080808"
theorem cover_2246235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_2246235)
  decide +kernel
#print axioms cover_2246235

def state_2246259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
def hex_2246259 : String := "43444042080505094440420941074344420905090A0909"
theorem cover_2246259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246259 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_2246259)
  decide +kernel
#print axioms cover_2246259

def state_2246284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 24)))
def hex_2246284 : String := "404244414305090A4108094441054305420A0541430542094044050505430A420A404443050A430A41090A0A420A440541050A"
theorem cover_2246284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246284 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_2246284)
  decide +kernel
#print axioms cover_2246284

def state_2246335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 25)))
def hex_2246335 : String := "4042084109430A44420940430909090909"
theorem cover_2246335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246335 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2246335)
  decide +kernel
#print axioms cover_2246335

def state_2246356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 24)))
def hex_2246356 : String := "44410940074207440A43090909"
theorem cover_2246356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246356 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2246356)
  decide +kernel
#print axioms cover_2246356

def state_2246369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 24)))
def hex_2246369 : String := "444109400742074344414042074443410807410807090840070A094441404207434441060709444106420606090940074207CF410940050909"
theorem cover_2246369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246369 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 57) (hex := hex_2246369)
  decide +kernel
#print axioms cover_2246369

def state_2246429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
def hex_2246429 : String := "4240440609440509400605"
theorem cover_2246429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2246429)
  decide +kernel
#print axioms cover_2246429
end Mub6.Numerical.CircleFullD0.Forest
