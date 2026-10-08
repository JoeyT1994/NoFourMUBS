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
def state_1494659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
def hex_1494659 : String := "400643064144064240064306050606"
theorem cover_1494659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1494659)
  decide +kernel
#print axioms cover_1494659

def state_1494675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
def hex_1494675 : String := "434144060A0641440642400643410A064108080606"
theorem cover_1494675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494675 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1494675)
  decide +kernel
#print axioms cover_1494675

def state_1494699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 58)))
def hex_1494699 : String := "424006434144064240060806064144424006430641080606424043410906410944060909400608440642400643084109060606"
theorem cover_1494699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1494699)
  decide +kernel
#print axioms cover_1494699

def state_1494750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 59)))
def hex_1494750 : String := "4240430A410A4244060A0643410A4244400A080A0A4142090A42444043410A064142090A42440640060906430909400A0944400643084108060A0A"
theorem cover_1494750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 59) (hex := hex_1494750)
  decide +kernel
#print axioms cover_1494750

def state_1494810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 58)))
def hex_1494810 : String := "06"
theorem cover_1494810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1494810)
  decide +kernel
#print axioms cover_1494810

def state_1494813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 59)))
def hex_1494813 : String := "43064142440640064306410A060606"
theorem cover_1494813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494813 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1494813)
  decide +kernel
#print axioms cover_1494813

def state_1494829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 100 else 59)))
def hex_1494829 : String := "41424440060840430541050643084108080842440640060806"
theorem cover_1494829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494829 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1494829)
  decide +kernel
#print axioms cover_1494829

def state_1494857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 101 else 118)))
def hex_1494857 : String := "400643410806414244400608090842440640060806"
theorem cover_1494857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494857 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1494857)
  decide +kernel
#print axioms cover_1494857
end Mub6.Numerical.CircleFullD0.Forest
