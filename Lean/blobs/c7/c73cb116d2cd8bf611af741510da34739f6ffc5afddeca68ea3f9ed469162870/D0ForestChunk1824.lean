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
def state_2310940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
def hex_2310940 : String := "4441064243400644054105420A0606434006440506064142060642434044060844410642430A064340060A064109080643400644410642060641060806"
theorem cover_2310940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310940 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2310940)
  decide +kernel
#print axioms cover_2310940

def state_2311004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 22)))
def hex_2311004 : String := "44434207414007440743070707074342074144400743420741440908074207410807400543420808080742074144070505"
theorem cover_2311004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_2311004)
  decide +kernel
#print axioms cover_2311004

def state_2311053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 22)))
def hex_2311053 : String := "4443420741404407430A0A0A0742074140070A074342410A06414044430A0A430A420A4108060A0642410A07414044434207410A07074308080A40070A"
theorem cover_2311053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311053 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2311053)
  decide +kernel
#print axioms cover_2311053

def state_2311114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 22)))
def hex_2311114 : String := "400744074207434140080A07410805"
theorem cover_2311114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2311114)
  decide +kernel
#print axioms cover_2311114

def state_2311133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 28 else 44)))
def hex_2311133 : String := "43414044094209094442090942430909430941400909090741400744074207434140064409080741060707"
theorem cover_2311133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311133 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_2311133)
  decide +kernel
#print axioms cover_2311133
end Mub6.Numerical.CircleFullD0.Forest
