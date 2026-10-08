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
def state_1321037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_1321037 : String := "43440840420844410A080A084440420543410508050540420A4344410A4006080A4441054306060A420A43444105080A44050A"
theorem cover_1321037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1321037)
  decide +kernel
#print axioms cover_1321037

def state_1321090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_1321090 : String := "40414208430844084009080808"
theorem cover_1321090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321090 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1321090)
  decide +kernel
#print axioms cover_1321090

def state_1321105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
def hex_1321105 : String := "41424308404441420809080A44080A4309400909424308404408420843054144060A06084308404408430541090508"
theorem cover_1321105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321105 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1321105)
  decide +kernel
#print axioms cover_1321105

def state_1321152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 11)))
def hex_1321152 : String := "41420A430544090942430544400A07074305444005430541090505"
theorem cover_1321152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321152 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1321152)
  decide +kernel
#print axioms cover_1321152

def state_1321179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
def hex_1321179 : String := "44414208430840090808410A07"
theorem cover_1321179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321179 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1321179)
  decide +kernel
#print axioms cover_1321179

def state_1321193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_1321193 : String := "40434142440540434105080505440540074341050805424405404308420507084407400708410742050743414205050805"
theorem cover_1321193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1321193)
  decide +kernel
#print axioms cover_1321193

def state_1321247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
def hex_1321247 : String := "404344410A420A4142400608400709424006084006080A4441054205070A43444105080A44050A"
theorem cover_1321247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321247 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1321247)
  decide +kernel
#print axioms cover_1321247
end Mub6.Numerical.CircleFullD0.Forest
