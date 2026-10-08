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
def state_1500380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 58)))
def hex_1500380 : String := "41420840084344410A42080A0A084208404344410842050908084344414208400A074205404344050705054142080A42084008434107074107054441080508"
theorem cover_1500380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500380 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1500380)
  decide +kernel
#print axioms cover_1500380

def state_1500443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 59)))
def hex_1500443 : String := "41084208400843444108080808"
theorem cover_1500443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500443 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1500443)
  decide +kernel
#print axioms cover_1500443

def state_1500456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 14)))
def hex_1500456 : String := "44404405084405414205434008440508050540084441080808"
theorem cover_1500456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1500456)
  decide +kernel
#print axioms cover_1500456

def state_1500483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 28)))
def hex_1500483 : String := "404243060906424344410706410A40064306074441070641404243070707074009424307050743440607440707"
theorem cover_1500483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500483 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1500483)
  decide +kernel
#print axioms cover_1500483

def state_1500528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
def hex_1500528 : String := "400A424344410A400A430A0A0A44410A4042430A0A0A424344070A4407410707070A0A"
theorem cover_1500528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500528 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_1500528)
  decide +kernel
#print axioms cover_1500528

def state_1500564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 28)))
def hex_1500564 : String := "4042090942444107054143400707074340090705440707"
theorem cover_1500564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500564 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1500564)
  decide +kernel
#print axioms cover_1500564

def state_1500587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 29)))
def hex_1500587 : String := "4042080A4244414340084208070843404208094244410705080708410843400842080A084441074307070A"
theorem cover_1500587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500587 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1500587)
  decide +kernel
#print axioms cover_1500587
end Mub6.Numerical.CircleFullD0.Forest
