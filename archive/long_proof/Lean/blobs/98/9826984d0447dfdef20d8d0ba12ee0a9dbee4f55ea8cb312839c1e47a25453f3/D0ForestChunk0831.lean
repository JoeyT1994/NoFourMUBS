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
def state_1500132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 104 else 116)))
def hex_1500132 : String := "4241400805054140434442050A0A0843444205410905094405420509404344054142050A050505"
theorem cover_1500132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1500132)
  decide +kernel
#print axioms cover_1500132

def state_1500171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 104 else 117)))
def hex_1500171 : String := "4241080841400809404341084442050A08084341094405094108440508"
theorem cover_1500171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1500171)
  decide +kernel
#print axioms cover_1500171

def state_1500200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 105 else 58)))
def hex_1500200 : String := "44420541400805054208410808"
theorem cover_1500200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500200 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1500200)
  decide +kernel
#print axioms cover_1500200

def state_1500214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
def hex_1500214 : String := "4344410A060A44410A4240064344050805060A"
theorem cover_1500214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500214 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1500214)
  decide +kernel
#print axioms cover_1500214

def state_1500234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 58)))
def hex_1500234 : String := "444142400A430A0A0A42404344060A4406410A4205064344410705410A42050644054142050705400607410A42400A430A410A444205070A0A"
theorem cover_1500234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500234 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1500234)
  decide +kernel
#print axioms cover_1500234

def state_1500291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 58)))
def hex_1500291 : String := "44414240430A0843444107050A44054108050A4240434405410A0505054043060707410A4240430A0843410A440542080A4108080A"
theorem cover_1500291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1500291)
  decide +kernel
#print axioms cover_1500291

def state_1500344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 59)))
def hex_1500344 : String := "4142080A42400843420844410840084309060808400A430A44410A424008430A080A0A"
theorem cover_1500344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500344 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_1500344)
  decide +kernel
#print axioms cover_1500344
end Mub6.Numerical.CircleFullD0.Forest
