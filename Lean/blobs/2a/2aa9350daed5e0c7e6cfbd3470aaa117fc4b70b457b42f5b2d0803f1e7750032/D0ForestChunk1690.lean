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
def state_2278765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
def hex_2278765 : String := "414442430A0A430A404144074206070A0A42430906434041440A4209430A0A0A0940414406060609440A420A430A0A"
theorem cover_2278765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278765 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_2278765)
  decide +kernel
#print axioms cover_2278765

def state_2278812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
def hex_2278812 : String := "4041444342064144400606064406060606440605414443420640410606060606440606"
theorem cover_2278812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278812 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2278812)
  decide +kernel
#print axioms cover_2278812

def state_2278851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 28)))
def hex_2278851 : String := "4243414408404243080808420A0808414408400842430808080808"
theorem cover_2278851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278851 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2278851)
  decide +kernel
#print axioms cover_2278851

def state_2278882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 58)))
def hex_2278882 : String := "4042430A41440A40090A0A43414408090841090842430A41440A400A0A0A4341440540050508414408404243080808420A0508"
theorem cover_2278882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2278882)
  decide +kernel
#print axioms cover_2278882

def state_2278934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
def hex_2278934 : String := "4243414007440707074140440706444206430A060640070A43410907410909"
theorem cover_2278934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278934 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2278934)
  decide +kernel
#print axioms cover_2278934

def state_2278966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 92 else (if j.val < 4 then 44 else 59)))
def hex_2278966 : String := "4341440A40420A0A0A0A4144404206430A060A40064206430A06440A400606"
theorem cover_2278966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278966 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2278966)
  decide +kernel
#print axioms cover_2278966
end Mub6.Numerical.CircleFullD0.Forest
