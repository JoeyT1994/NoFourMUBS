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
def state_1033509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 206 else (if j.val < 4 then 150 else 126)))
def hex_1033509 : String := "4440410942060641420943444006080609424344050509434440060506444041090A41420543050805844006410984"
theorem cover_1033509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033509 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1033509)
  decide +kernel
#print axioms cover_1033509

def state_1033556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 206 else (if j.val < 4 then 151 else 126)))
def hex_1033556 : String := "444009410942094344400941090A090909"
theorem cover_1033556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033556 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1033556)
  decide +kernel
#print axioms cover_1033556

def state_1033574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 150 else 126)))
def hex_1033574 : String := "44400741424306444007080807424306444007414243050707420507840740064142060684"
theorem cover_1033574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033574 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 37) (hex := hex_1033574)
  decide +kernel
#print axioms cover_1033574

def state_1033611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 126)))
def hex_1033611 : String := "4440410707414243444007080809074243444007414243080807420A0784440A090740074142090784"
theorem cover_1033611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1033611)
  decide +kernel
#print axioms cover_1033611

def state_1033653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 205) else (if j.val < 3 then 206 else (if j.val < 4 then 75 else 126)))
def hex_1033653 : String := "4344404142060642060641424305440584430544400A0584420543054405848444400A41420A43440A840A0A84"
theorem cover_1033653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033653 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1033653)
  decide +kernel
#print axioms cover_1033653

def state_1033698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 205) else (if j.val < 3 then 207 else (if j.val < 4 then 75 else 126)))
def hex_1033698 : String := "434440074142430644400741420505058407424305444007058407844440410707414243444007410A0A840A074243440A840A0784"
theorem cover_1033698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033698 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1033698)
  decide +kernel
#print axioms cover_1033698
end Mub6.Numerical.CircleFullD0.Forest
