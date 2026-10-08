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
def state_984782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 101 else 42)))
def hex_984782 : String := "440842404308440608430844414240060808084142400705070808"
theorem cover_984782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984782 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_984782)
  decide +kernel
#print axioms cover_984782

def state_984810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 100 else 42)))
def hex_984810 : String := "41440A0A44080A"
theorem cover_984810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_984810)
  decide +kernel
#print axioms cover_984810

def state_984818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 101 else 42)))
def hex_984818 : String := "444240430A410A0A0A0A4240430A4105440A050A0A"
theorem cover_984818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984818 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_984818)
  decide +kernel
#print axioms cover_984818

def state_984839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 101 else 42)))
def hex_984839 : String := "44424043084144080A08430A0A40080A4240434408410A084441424043080A0A0A084142050A42404308050508430A440A0A40430844080A0A"
theorem cover_984839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_984839)
  decide +kernel
#print axioms cover_984839

def state_984896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 50 else 42)))
def hex_984896 : String := "4043084144080708430A410A44080A"
theorem cover_984896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984896 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_984896)
  decide +kernel
#print axioms cover_984896

def state_984913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 50 else 43)))
def hex_984913 : String := "43074441074240074307444107420507050707"
theorem cover_984913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_984913)
  decide +kernel
#print axioms cover_984913

def state_984932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 50 else 43)))
def hex_984932 : String := "43444107424043070A0A0A074441420506424043444105080544410542054008050543050540430744410708070A4105420507"
theorem cover_984932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984932 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_984932)
  decide +kernel
#print axioms cover_984932

def state_984983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 50 else 43)))
def hex_984983 : String := "400743064441060A06"
theorem cover_984983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_984983)
  decide +kernel
#print axioms cover_984983
end Mub6.Numerical.CircleFullD0.Forest
