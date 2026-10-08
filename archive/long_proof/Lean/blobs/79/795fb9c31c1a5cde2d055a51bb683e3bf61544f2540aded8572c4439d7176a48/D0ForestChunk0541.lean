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
def state_1318550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
def hex_1318550 : String := "414044430508054443054241054008440908050540440908444342414044060744430609074006440607410506094342070508"
theorem cover_1318550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318550 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1318550)
  decide +kernel
#print axioms cover_1318550

def state_1318601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 103)))
def hex_1318601 : String := "08"
theorem cover_1318601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318601 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1318601)
  decide +kernel
#print axioms cover_1318601

def state_1318603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 51)))
def hex_1318603 : String := "444207410540430744420705420705430544080507"
theorem cover_1318603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318603 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1318603)
  decide +kernel
#print axioms cover_1318603

def state_1318626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 102)))
def hex_1318626 : String := "414044430742064106404443070606060744430706064044430742074140080A40080A074443070A07"
theorem cover_1318626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1318626)
  decide +kernel
#print axioms cover_1318626

def state_1318668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
def hex_1318668 : String := "404443054241054044430509054443050605050544430542060505"
theorem cover_1318668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318668 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1318668)
  decide +kernel
#print axioms cover_1318668

def state_1318698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 204)))
def hex_1318698 : String := "4241404443074207050744430742070507404443064207060744430742074140090840060A07410540440605440805"
theorem cover_1318698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318698 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1318698)
  decide +kernel
#print axioms cover_1318698

def state_1318745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 204)))
def hex_1318745 : String := "424140440943420705084443420A410509094342070542060640440909440A4342074140090A40090A0A4140090509"
theorem cover_1318745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318745 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1318745)
  decide +kernel
#print axioms cover_1318745
end Mub6.Numerical.CircleFullD0.Forest
