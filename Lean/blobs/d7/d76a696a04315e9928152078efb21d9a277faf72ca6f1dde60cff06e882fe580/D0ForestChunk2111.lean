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
def state_2587189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 76)))
def hex_2587189 : String := "4106424340080940440641060806430906"
theorem cover_2587189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587189 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2587189)
  decide +kernel
#print axioms cover_2587189

def state_2587207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 72) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 77)))
def hex_2587207 : String := "4243400A0A0A43404406080606"
theorem cover_2587207 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587207 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2587207)
  decide +kernel
#print axioms cover_2587207

def state_2587220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 73) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 77)))
def hex_2587220 : String := "42434044084108084409414243090A09094044410A08410A4243080A084406410A4243400A090A430906434008094044084108084406410609"
theorem cover_2587220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587220 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2587220)
  decide +kernel
#print axioms cover_2587220

def state_2587277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 38)))
def hex_2587277 : String := "404441050541050544064106434240440A0A06400506420605"
theorem cover_2587277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2587277)
  decide +kernel
#print axioms cover_2587277

def state_2587305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 38)))
def hex_2587305 : String := "44414243084008440841080808084142064306400644080806"
theorem cover_2587305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587305 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2587305)
  decide +kernel
#print axioms cover_2587305

def state_2587333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 192 else (if j.val < 4 then 94 else 76)))
def hex_2587333 : String := "43404441050541050505404441420A43070A4243054008050841420A434008050A42430540440806054308400844084105054405410505"
theorem cover_2587333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587333 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2587333)
  decide +kernel
#print axioms cover_2587333

def state_2587388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 193 else (if j.val < 4 then 94 else 76)))
def hex_2587388 : String := "4340080940444107074142430840080A0808440941424305400A050909"
theorem cover_2587388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2587388)
  decide +kernel
#print axioms cover_2587388

def state_2587417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 76)))
def hex_2587417 : String := "4243404408060540444108084142060806444105054105054309400809"
theorem cover_2587417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587417 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2587417)
  decide +kernel
#print axioms cover_2587417
end Mub6.Numerical.CircleFullD0.Forest
