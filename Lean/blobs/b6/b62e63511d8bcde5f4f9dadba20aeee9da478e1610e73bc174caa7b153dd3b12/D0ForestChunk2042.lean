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
def state_2570601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 29 else 23)))
def hex_2570601 : String := "424408400808440808"
theorem cover_2570601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570601 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2570601)
  decide +kernel
#print axioms cover_2570601

def state_2570610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
def hex_2570610 : String := "41440543424041054405430A0A0540410544050705424041050A050944430A0A43420A40440A410A060A420A40440A080A"
theorem cover_2570610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2570610)
  decide +kernel
#print axioms cover_2570610

def state_2570659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
def hex_2570659 : String := "40414406080841440508440A08"
theorem cover_2570659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_2570659)
  decide +kernel
#print axioms cover_2570659

def state_2570673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_2570673 : String := "42074340074144050A0707"
theorem cover_2570673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570673 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2570673)
  decide +kernel
#print axioms cover_2570673

def state_2570684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
def hex_2570684 : String := "424340440741420643060706440A0608434044414342070707074143424407064440070A400506080744410A07410A064007440708"
theorem cover_2570684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570684 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_2570684)
  decide +kernel
#print axioms cover_2570684

def state_2570737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2570737 : String := "42434407064407400706434440090740430607064407400744074142070706"
theorem cover_2570737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2570737)
  decide +kernel
#print axioms cover_2570737

def state_2570772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
def hex_2570772 : String := "444142430644400A4142060A06064344400741430644070506064440054144424305050505440505054206430644050506"
theorem cover_2570772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_2570772)
  decide +kernel
#print axioms cover_2570772
end Mub6.Numerical.CircleFullD0.Forest
