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
def state_1339195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 117 else 194) else (if j.val < 3 then 88 else (if j.val < 4 then 67 else 90)))
def hex_1339195 : String := "444240434144060806414442064005060808064043410909410909094240080A40434144420807070741444208094208060809"
theorem cover_1339195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339195 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1339195)
  decide +kernel
#print axioms cover_1339195

def state_1339246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 117 else 195) else (if j.val < 3 then 88 else (if j.val < 4 then 67 else 90)))
def hex_1339246 : String := "444206404308410906064208400709"
theorem cover_1339246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339246 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1339246)
  decide +kernel
#print axioms cover_1339246

def state_1339261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 90)))
def hex_1339261 : String := "4043074144050607434109074144094240070907440907"
theorem cover_1339261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1339261)
  decide +kernel
#print axioms cover_1339261

def state_1339284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 91)))
def hex_1339284 : String := "4240084341440807074144420840080A0808400707"
theorem cover_1339284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339284 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1339284)
  decide +kernel
#print axioms cover_1339284

def state_1339305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
def hex_1339305 : String := "4305414409420A094442404305410909050942404305410A4405050509"
theorem cover_1339305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339305 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1339305)
  decide +kernel
#print axioms cover_1339305

def state_1339334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 22)))
def hex_1339334 : String := "44404341424409090942090741420908090940430741064244400707060609"
theorem cover_1339334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339334 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1339334)
  decide +kernel
#print axioms cover_1339334

def state_1339365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
def hex_1339365 : String := "42444043414206440607064142060A060640430741444240084307414406080607070743054144420609420507440607444043070909400707"
theorem cover_1339365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339365 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1339365)
  decide +kernel
#print axioms cover_1339365
end Mub6.Numerical.CircleFullD0.Forest
