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
def state_1639633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
def hex_1639633 : String := "42444341420507054142444006430541050540430541424406050605054406400605424406050643054142054440070505054443070643054144070505"
theorem cover_1639633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1639633)
  decide +kernel
#print axioms cover_1639633

def state_1639694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
def hex_1639694 : String := "42444305060506"
theorem cover_1639694 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639694 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1639694)
  decide +kernel
#print axioms cover_1639694

def state_1639701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
def hex_1639701 : String := "4142050505"
theorem cover_1639701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1639701)
  decide +kernel
#print axioms cover_1639701

def state_1639710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 18)))
def hex_1639710 : String := "434142444006434109060640064341420505054142090606060606"
theorem cover_1639710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639710 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1639710)
  decide +kernel
#print axioms cover_1639710

def state_1639738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 19)))
def hex_1639738 : String := "4142444043410A0506430541444205050505400A05444006430506400605424440060505440605"
theorem cover_1639738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639738 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1639738)
  decide +kernel
#print axioms cover_1639738

def state_1639777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 19)))
def hex_1639777 : String := "41424440064341444209060A06410A06400A43050A44064006430A064244060A06"
theorem cover_1639777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639777 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1639777)
  decide +kernel
#print axioms cover_1639777

def state_1639810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 9)))
def hex_1639810 : String := "440643414406060606"
theorem cover_1639810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1639810)
  decide +kernel
#print axioms cover_1639810

def state_1639819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
def hex_1639819 : String := "424406434205060606"
theorem cover_1639819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639819 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1639819)
  decide +kernel
#print axioms cover_1639819

def state_1639830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 9)))
def hex_1639830 : String := "44434041420944090505054041090909430540414244090544430509050505"
theorem cover_1639830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639830 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1639830)
  decide +kernel
#print axioms cover_1639830
end Mub6.Numerical.CircleFullD0.Forest
