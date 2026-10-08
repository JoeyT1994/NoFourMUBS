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
def state_1658268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
def hex_1658268 : String := "4443424140444308070808404443080708084108084241400707404407070741400507400607430842414440430807070844404308070708410808"
theorem cover_1658268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658268 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1658268)
  decide +kernel
#print axioms cover_1658268

def state_1658327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
def hex_1658327 : String := "4443080708"
theorem cover_1658327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658327 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1658327)
  decide +kernel
#print axioms cover_1658327

def state_1658332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 22)))
def hex_1658332 : String := "414044430805080840444308060808"
theorem cover_1658332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658332 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1658332)
  decide +kernel
#print axioms cover_1658332

def state_1658347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
def hex_1658347 : String := "43084241080808"
theorem cover_1658347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1658347)
  decide +kernel
#print axioms cover_1658347

def state_1658356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 22)))
def hex_1658356 : String := "08"
theorem cover_1658356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658356 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1658356)
  decide +kernel
#print axioms cover_1658356

def state_1658359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
def hex_1658359 : String := "4144434241404443084207080808080842414044070707400A0741400644060706430842414440430806080844400A0808410808444308424006070643050A"
theorem cover_1658359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658359 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1658359)
  decide +kernel
#print axioms cover_1658359

def state_1658422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
def hex_1658422 : String := "41444308070844430542070805"
theorem cover_1658422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658422 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1658422)
  decide +kernel
#print axioms cover_1658422

def state_1658435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 22)))
def hex_1658435 : String := "40414443080608440606410808"
theorem cover_1658435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658435 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1658435)
  decide +kernel
#print axioms cover_1658435

def state_1658448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
def hex_1658448 : String := "430508"
theorem cover_1658448 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658448 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1658448)
  decide +kernel
#print axioms cover_1658448

def state_1658451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
def hex_1658451 : String := "4144430842404108080608084443050808"
theorem cover_1658451 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658451 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1658451)
  decide +kernel
#print axioms cover_1658451

def state_1658469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
def hex_1658469 : String := "440505"
theorem cover_1658469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658469 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1658469)
  decide +kernel
#print axioms cover_1658469

def state_1658474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
def hex_1658474 : String := "404143444205404143050905050544094207404144074205430507050943054405054143050905"
theorem cover_1658474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658474 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1658474)
  decide +kernel
#print axioms cover_1658474
end Mub6.Numerical.CircleFullD0.Forest
