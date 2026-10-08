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
def state_974454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 56)))
def hex_974454 : String := "430A40410505410544420543090505"
theorem cover_974454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974454 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_974454)
  decide +kernel
#print axioms cover_974454

def state_974469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 56)))
def hex_974469 : String := "430A40414442430A05430A404105080A0A44424340410A09090543094041440843080544084309054109094205430A05410A44424309400506090A"
theorem cover_974469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974469 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_974469)
  decide +kernel
#print axioms cover_974469

def state_974528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 57)))
def hex_974528 : String := "420A0A"
theorem cover_974528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974528 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_974528)
  decide +kernel
#print axioms cover_974528

def state_974531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 29)))
def hex_974531 : String := "404105050A"
theorem cover_974531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974531 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_974531)
  decide +kernel
#print axioms cover_974531

def state_974536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 14)))
def hex_974536 : String := "42054440414305054344420540410543444205080505410543444205080505050541054344420540410543444205400808050541054344070505050505"
theorem cover_974536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 61) (hex := hex_974536)
  decide +kernel
#print axioms cover_974536

def state_974597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
def hex_974597 : String := "05"
theorem cover_974597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974597 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_974597)
  decide +kernel
#print axioms cover_974597

def state_974600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_974600 : String := "414306094344060644424041060941430609434442400641060A060609400641064306440A06420906"
theorem cover_974600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974600 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_974600)
  decide +kernel
#print axioms cover_974600

def state_974642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_974642 : String := "4344420A0606444240430609430A074006430608420506"
theorem cover_974642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_974642)
  decide +kernel
#print axioms cover_974642

def state_974669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 28)))
def hex_974669 : String := "4106444306424006414406064443064240410607410844080740064106094306424006410607060606"
theorem cover_974669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 41) (hex := hex_974669)
  decide +kernel
#print axioms cover_974669
end Mub6.Numerical.CircleFullD0.Forest
