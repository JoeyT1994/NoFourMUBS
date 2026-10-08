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
def state_958049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
def hex_958049 : String := "41424344090A44060A430944090A4243090609"
theorem cover_958049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958049 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_958049)
  decide +kernel
#print axioms cover_958049

def state_958070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
def hex_958070 : String := "420A0A"
theorem cover_958070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958070 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_958070)
  decide +kernel
#print axioms cover_958070

def state_958074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 55)))
def hex_958074 : String := "444340410A4244430A40410A42430705070A0A0A0A404142050A4243444005410542050A0505434440410A070A0A05410A42430A050A0A"
theorem cover_958074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958074 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_958074)
  decide +kernel
#print axioms cover_958074

def state_958129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 107 else (if j.val < 4 then 36 else 55)))
def hex_958129 : String := "44430A40410A42434440070907444007410A090543074407070A0A"
theorem cover_958129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958129 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_958129)
  decide +kernel
#print axioms cover_958129

def state_958156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
def hex_958156 : String := "410A420A0A"
theorem cover_958156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958156 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_958156)
  decide +kernel
#print axioms cover_958156

def state_958164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
def hex_958164 : String := "42434440410506060505434440414244080508420808414206090640410542054344400509050541054205430A054440050605"
theorem cover_958164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958164 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_958164)
  decide +kernel
#print axioms cover_958164

def state_958216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 37 else 54)))
def hex_958216 : String := "434406404105420543440605050606"
theorem cover_958216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958216 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_958216)
  decide +kernel
#print axioms cover_958216

def state_958231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 107 else (if j.val < 4 then 37 else 54)))
def hex_958231 : String := "434440414206080606404142434440050605054344094005094405054243440940054105060643094406054142434406050543094406054206094406400506"
theorem cover_958231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958231 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_958231)
  decide +kernel
#print axioms cover_958231

def state_958294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
def hex_958294 : String := "4142064344060A0606"
theorem cover_958294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958294 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_958294)
  decide +kernel
#print axioms cover_958294
end Mub6.Numerical.CircleFullD0.Forest
