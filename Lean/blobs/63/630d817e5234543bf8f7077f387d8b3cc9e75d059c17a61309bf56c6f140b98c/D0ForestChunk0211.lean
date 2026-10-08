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
def state_988132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 68 else (if j.val < 4 then 103 else 86)))
def hex_988132 : String := "400643444105050505"
theorem cover_988132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_988132)
  decide +kernel
#print axioms cover_988132

def state_988144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 172)))
def hex_988144 : String := "414240064344060506404344064142060806064344414240060A40080A084142054043084408050A420608444142064006430A060641420540430505050606"
theorem cover_988144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988144 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_988144)
  decide +kernel
#print axioms cover_988144

def state_988207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 173)))
def hex_988207 : String := "41420540434441070607440605434441054205400805054441050505420640064344414206080641420540060506440606"
theorem cover_988207 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988207 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_988207)
  decide +kernel
#print axioms cover_988207

def state_988256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 207 else 86)))
def hex_988256 : String := "44414206400643440606060641420540060506"
theorem cover_988256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988256 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_988256)
  decide +kernel
#print axioms cover_988256

def state_988277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 172)))
def hex_988277 : String := "41424043050505404344410A0A41050A444142050A074105420540430A0505430A44070542074043440741420708060707"
theorem cover_988277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_988277)
  decide +kernel
#print axioms cover_988277

def state_988326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 173)))
def hex_988326 : String := "414205404305050542054043444142050A42060841054205400805444105060543440A05440705"
theorem cover_988326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988326 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_988326)
  decide +kernel
#print axioms cover_988326
end Mub6.Numerical.CircleFullD0.Forest
