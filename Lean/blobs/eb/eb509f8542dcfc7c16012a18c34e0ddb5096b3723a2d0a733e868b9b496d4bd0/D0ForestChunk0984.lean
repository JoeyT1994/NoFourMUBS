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
def state_1536622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 8)))
def hex_1536622 : String := "414243444041094209060940410942090A09094344060A0A424344064042414344064042080606090606064405400A0943060A"
theorem cover_1536622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1536622)
  decide +kernel
#print axioms cover_1536622

def state_1536675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 9)))
def hex_1536675 : String := "42434440410842444340080A0808084142090842440A43400A0A090A4008410842444305060505084344080808"
theorem cover_1536675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536675 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1536675)
  decide +kernel
#print axioms cover_1536675

def state_1536725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 18)))
def hex_1536725 : String := "4441434042070742434407410A07074344410A0741080A0A070741434008424443410A4007070A430506444341050A08080843400742074407414309070707"
theorem cover_1536725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536725 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1536725)
  decide +kernel
#print axioms cover_1536725

def state_1536788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 18)))
def hex_1536788 : String := "4441434008420A08084309074108430907"
theorem cover_1536788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536788 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1536788)
  decide +kernel
#print axioms cover_1536788

def state_1536807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 36)))
def hex_1536807 : String := "414340424344410A07410A0A0A43440A0A0A424344410A0841090A0A43440A0A0A0A434042074143440640070607074241430607060607"
theorem cover_1536807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536807 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1536807)
  decide +kernel
#print axioms cover_1536807
end Mub6.Numerical.CircleFullD0.Forest
