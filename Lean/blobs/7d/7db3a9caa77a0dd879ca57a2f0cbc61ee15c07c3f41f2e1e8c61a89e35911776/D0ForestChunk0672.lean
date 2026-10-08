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
def state_1462086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 26)))
def hex_1462086 : String := "41404307084344420741074007430707074442074140084307084008434407074405070740434406070843444205414006430607054207410707440508"
theorem cover_1462086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462086 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1462086)
  decide +kernel
#print axioms cover_1462086

def state_1462149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
def hex_1462149 : String := "0A"
theorem cover_1462149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462149 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1462149)
  decide +kernel
#print axioms cover_1462149

def state_1462151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 26)))
def hex_1462151 : String := "4442410A4006430644060A0A0A"
theorem cover_1462151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1462151)
  decide +kernel
#print axioms cover_1462151

def state_1462167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
def hex_1462167 : String := "400A434442410A4006430A444207060A0A0A4442418040430A0843444241804006430605410A060A44420841804008434406080808410A400A430A44070A0A"
theorem cover_1462167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462167 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 63) (hex := hex_1462167)
  decide +kernel
#print axioms cover_1462167

def state_1462230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
def hex_1462230 : String := "404306440608434442410606060A4442414043060843440642070A44050805414006430644060A0642080A"
theorem cover_1462230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1462230)
  decide +kernel
#print axioms cover_1462230

def state_1462273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 52)))
def hex_1462273 : String := "410A4006430644060A"
theorem cover_1462273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462273 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1462273)
  decide +kernel
#print axioms cover_1462273

def state_1462282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 53)))
def hex_1462282 : String := "0A"
theorem cover_1462282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462282 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1462282)
  decide +kernel
#print axioms cover_1462282

def state_1462283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
def hex_1462283 : String := "40430644060A43440642410A06064442414006430644054205410605050642414008430A0840084344060A08410A400643060A"
theorem cover_1462283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462283 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1462283)
  decide +kernel
#print axioms cover_1462283
end Mub6.Numerical.CircleFullD0.Forest
