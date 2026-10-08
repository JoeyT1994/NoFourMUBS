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
def state_951331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 27)))
def hex_951331 : String := "424109434406090641434440420541054344050505070505434440420641434406400506060606404209410544434009420607050542074107440607440605"
theorem cover_951331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951331 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_951331)
  decide +kernel
#print axioms cover_951331

def state_951394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 27)))
def hex_951394 : String := "4207410706"
theorem cover_951394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951394 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_951394)
  decide +kernel
#print axioms cover_951394

def state_951399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 27)))
def hex_951399 : String := "4042050506"
theorem cover_951399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951399 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_951399)
  decide +kernel
#print axioms cover_951399

def state_951406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 12)))
def hex_951406 : String := "4044410909414243404408424106080609404408420808440842410808090942430540084405410905054409414243094044094241090909090909"
theorem cover_951406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951406 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_951406)
  decide +kernel
#print axioms cover_951406

def state_951466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 12)))
def hex_951466 : String := "44414208080A41424340084408420808084340080808424340084408410808084340080808"
theorem cover_951466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951466 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_951466)
  decide +kernel
#print axioms cover_951466

def state_951503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 12)))
def hex_951503 : String := "444142070742060741424340440742070807074309074243404406414206080606064309400806"
theorem cover_951503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951503 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_951503)
  decide +kernel
#print axioms cover_951503

def state_951548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 26)))
def hex_951548 : String := "40064244414306400609430540424408060609410606440906"
theorem cover_951548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951548 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_951548)
  decide +kernel
#print axioms cover_951548
end Mub6.Numerical.CircleFullD0.Forest
