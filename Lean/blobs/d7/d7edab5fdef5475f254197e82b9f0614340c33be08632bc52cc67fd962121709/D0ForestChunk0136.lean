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
def state_970137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 28)))
def hex_970137 : String := "4344420640414309440642060909094240410843084406050840410A070A4406420540410544060506"
theorem cover_970137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_970137)
  decide +kernel
#print axioms cover_970137

def state_970178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 29)))
def hex_970178 : String := "404105430705410A43084442050505"
theorem cover_970178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_970178)
  decide +kernel
#print axioms cover_970178

def state_970202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 46) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 56)))
def hex_970202 : String := "41424443400A4142060A060643404107074142080842440608440707400A4142064406060644434007414244050505050A430740074142070707420A440A07"
theorem cover_970202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970202 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_970202)
  decide +kernel
#print axioms cover_970202

def state_970265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 46) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 56)))
def hex_970265 : String := "414244064340410842060806064443050643404108420505084041420606060642064406430506"
theorem cover_970265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970265 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_970265)
  decide +kernel
#print axioms cover_970265

def state_970304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 56)))
def hex_970304 : String := "40414206440643400706060A06"
theorem cover_970304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_970304)
  decide +kernel
#print axioms cover_970304

def state_970318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 57)))
def hex_970318 : String := "40414244434007084007410808080742444341400742070707414007420A070A0707414208084244434041084208050806084443400708404107070608"
theorem cover_970318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970318 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_970318)
  decide +kernel
#print axioms cover_970318
end Mub6.Numerical.CircleFullD0.Forest
