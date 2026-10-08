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
def state_2304183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 34 else (if j.val < 4 then 111 else 92)))
def hex_2304183 : String := "424440050A05444041434208080505410A0A40054143090505"
theorem cover_2304183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304183 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2304183)
  decide +kernel
#print axioms cover_2304183

def state_2304208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
def hex_2304208 : String := "434206440A0505"
theorem cover_2304208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304208 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2304208)
  decide +kernel
#print axioms cover_2304208

def state_2304215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
def hex_2304215 : String := "41430A0A0A"
theorem cover_2304215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304215 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2304215)
  decide +kernel
#print axioms cover_2304215

def state_2304220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 93)))
def hex_2304220 : String := "4041434205444005410905050505414306420A440A0906"
theorem cover_2304220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304220 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2304220)
  decide +kernel
#print axioms cover_2304220

def state_2304247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 110 else 92)))
def hex_2304247 : String := "424440C441430A420A090A404143420909090541090A4440C44143070943420A440A07420A4440090909404109434244C40544C4050541074342060709"
theorem cover_2304247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304247 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2304247)
  decide +kernel
#print axioms cover_2304247

def state_2304308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 111 else 92)))
def hex_2304308 : String := "424440414308080541430908430A084005410905444041080841094342440A0808084008410908"
theorem cover_2304308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304308 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2304308)
  decide +kernel
#print axioms cover_2304308

def state_2304347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 92)))
def hex_2304347 : String := "4342444041C4050A400506444041C4054143060A0640054143060805424440050A0544400541080505"
theorem cover_2304347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 41) (hex := hex_2304347)
  decide +kernel
#print axioms cover_2304347

def state_2304388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 92)))
def hex_2304388 : String := "4143420A444041070A070742440A4041090A09444041094309090909430A420A440A0A"
theorem cover_2304388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2304388)
  decide +kernel
#print axioms cover_2304388
end Mub6.Numerical.CircleFullD0.Forest
