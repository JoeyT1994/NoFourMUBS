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
def state_953966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 109)))
def hex_953966 : String := "430A4042410AC7410AC70A"
theorem cover_953966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953966 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_953966)
  decide +kernel
#print axioms cover_953966

def state_953977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 54)))
def hex_953977 : String := "444309404142444309404241070709070A44090A42C709410A09430A40410A420A0A0A"
theorem cover_953977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_953977)
  decide +kernel
#print axioms cover_953977

def state_954013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 54)))
def hex_954013 : String := "444340C70540C7064340C7410A424405080540C741424344060806430A44060A42434406400806064344050A06"
theorem cover_954013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_954013)
  decide +kernel
#print axioms cover_954013

def state_954058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 54)))
def hex_954058 : String := "44430540410909094340410A0909404142C7430944090A42C743094409404109090941420A0942430944060A09"
theorem cover_954058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954058 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_954058)
  decide +kernel
#print axioms cover_954058

def state_954103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
def hex_954103 : String := "414244430A060A0A424406430A40410A0606440943054041090909"
theorem cover_954103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_954103)
  decide +kernel
#print axioms cover_954103

def state_954130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 55)))
def hex_954130 : String := "430A40410A42444340C70840C741084208080844430A40410A420A0A0A0A0A"
theorem cover_954130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_954130)
  decide +kernel
#print axioms cover_954130

def state_954161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 27)))
def hex_954161 : String := "44430940414244090A090909430A40410A420A060A"
theorem cover_954161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954161 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_954161)
  decide +kernel
#print axioms cover_954161

def state_954182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
def hex_954182 : String := "410A4244430940410A420609060A0A"
theorem cover_954182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954182 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_954182)
  decide +kernel
#print axioms cover_954182

def state_954197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 13)))
def hex_954197 : String := "4409430940410A4244090A090A"
theorem cover_954197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954197 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_954197)
  decide +kernel
#print axioms cover_954197
end Mub6.Numerical.CircleFullD0.Forest
