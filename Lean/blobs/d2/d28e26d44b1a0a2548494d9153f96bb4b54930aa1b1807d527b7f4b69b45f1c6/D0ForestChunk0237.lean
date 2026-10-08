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
def state_994253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 105 else 86)))
def hex_994253 : String := "43444142404344410806080808404309094344410807094408084240060740434405C64406C6430707C6444108420640060741084208404443C6060808"
theorem cover_994253 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994253 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_994253)
  decide +kernel
#print axioms cover_994253

def state_994314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 86)))
def hex_994314 : String := "42064006434407C6440642064140060706"
theorem cover_994314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994314 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_994314)
  decide +kernel
#print axioms cover_994314

def state_994332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 87)))
def hex_994332 : String := "42404443C6050505404443C641084206400644060843C6084443C60843C608"
theorem cover_994332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994332 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_994332)
  decide +kernel
#print axioms cover_994332

def state_994363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 87)))
def hex_994363 : String := "424006440643C605404443C60643C6064443C6420641404406430A064443C607080643C64241050641400808400644430A060A"
theorem cover_994363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994363 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_994363)
  decide +kernel
#print axioms cover_994363

def state_994414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 43)))
def hex_994414 : String := "42064006434441420640054305070641C60644064142064006440643C60606"
theorem cover_994414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994414 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_994414)
  decide +kernel
#print axioms cover_994414

def state_994445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 21)))
def hex_994445 : String := "44414206400643440641420640064307060606064142064006444341420640064408080606434108420640064406080806"
theorem cover_994445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_994445)
  decide +kernel
#print axioms cover_994445

def state_994494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 10)))
def hex_994494 : String := "440606"
theorem cover_994494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994494 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_994494)
  decide +kernel
#print axioms cover_994494
end Mub6.Numerical.CircleFullD0.Forest
