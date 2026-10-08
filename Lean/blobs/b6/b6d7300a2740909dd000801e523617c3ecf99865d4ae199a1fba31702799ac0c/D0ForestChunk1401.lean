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
def state_1636973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 38)))
def hex_1636973 : String := "43414442400A43410A0A0A400643070A420A0A44420A060A41440A0A0A"
theorem cover_1636973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636973 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1636973)
  decide +kernel
#print axioms cover_1636973

def state_1637003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 100 else 38)))
def hex_1637003 : String := "4144424043054144080505054043074142440840070507420505054205404305414442050505050505"
theorem cover_1637003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637003 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1637003)
  decide +kernel
#print axioms cover_1637003

def state_1637044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 101 else 38)))
def hex_1637044 : String := "414442404341080A08430509404341080A0843414205080509424043410A050A054043410A0A0A430541440805054442400A054006054205400A05"
theorem cover_1637044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1637044)
  decide +kernel
#print axioms cover_1637044

def state_1637103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 39)))
def hex_1637103 : String := "4043414209090A0A4305414244400A050544400A050505"
theorem cover_1637103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1637103)
  decide +kernel
#print axioms cover_1637103

def state_1637128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 38)))
def hex_1637128 : String := "4341070606"
theorem cover_1637128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637128 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1637128)
  decide +kernel
#print axioms cover_1637128

def state_1637134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 57 else (if j.val < 4 then 100 else 38)))
def hex_1637134 : String := "4142444007430541070540070507420507"
theorem cover_1637134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1637134)
  decide +kernel
#print axioms cover_1637134

def state_1637151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 57 else (if j.val < 4 then 101 else 38)))
def hex_1637151 : String := "4142444006434142080842050541080940430A0643414205050541420808420505440640064307414406420806064244400643050640060506"
theorem cover_1637151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1637151)
  decide +kernel
#print axioms cover_1637151
end Mub6.Numerical.CircleFullD0.Forest
