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
def state_964395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 72 else 111)))
def hex_964395 : String := "404142444308060844434008084041080906084244434041080A06060844434041420807420A07410808404142064406070606430808414208084206440608"
theorem cover_964395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964395 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_964395)
  decide +kernel
#print axioms cover_964395

def state_964458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 73 else 111)))
def hex_964458 : String := "404109420644060906"
theorem cover_964458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964458 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_964458)
  decide +kernel
#print axioms cover_964458

def state_964473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 178) else (if j.val < 3 then 210 else (if j.val < 4 then 72 else 220)))
def hex_964473 : String := "43404142440643400705064406070A0606"
theorem cover_964473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964473 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_964473)
  decide +kernel
#print axioms cover_964473

def state_964490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 178) else (if j.val < 3 then 210 else (if j.val < 4 then 72 else 221)))
def hex_964490 : String := "4340414244430740070607074244070707414244060844430506084244060844060740414244064308054443070607420644060706"
theorem cover_964490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964490 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_964490)
  decide +kernel
#print axioms cover_964490

def state_964543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 178) else (if j.val < 3 then 211 else (if j.val < 4 then 72 else 110)))
def hex_964543 : String := "4443094041420607090643400741420707074007414244060807420607"
theorem cover_964543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964543 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_964543)
  decide +kernel
#print axioms cover_964543

def state_964572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 179) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
def hex_964572 : String := "4244064340414207070741420609050644094307400706"
theorem cover_964572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964572 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_964572)
  decide +kernel
#print axioms cover_964572

def state_964595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
def hex_964595 : String := "4142064406430906420609"
theorem cover_964595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964595 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_964595)
  decide +kernel
#print axioms cover_964595

def state_964606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 73 else 110)))
def hex_964606 : String := "40414206434406404142060742060706060606"
theorem cover_964606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964606 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_964606)
  decide +kernel
#print axioms cover_964606
end Mub6.Numerical.CircleFullD0.Forest
