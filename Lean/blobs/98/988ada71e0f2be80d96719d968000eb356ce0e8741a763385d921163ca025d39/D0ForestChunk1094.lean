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
def state_1562900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 212 else (if j.val < 4 then 84 else 176)))
def hex_1562900 : String := "43414044420A0A420808440A0A40444243410A060A43410A060A4243410A4008060A4341084008060844420A06420A0A0A"
theorem cover_1562900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1562900)
  decide +kernel
#print axioms cover_1562900

def state_1562949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 213 else (if j.val < 4 then 84 else 176)))
def hex_1562949 : String := "43414044420A05050540444243060A064243410506084305084406420606410A400A0A"
theorem cover_1562949 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562949 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1562949)
  decide +kernel
#print axioms cover_1562949

def state_1562984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 177)))
def hex_1562984 : String := "424341400807404442430808080844420A43070A4243070807410A40080A434105404442080808444243050A0507410840080A"
theorem cover_1562984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562984 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1562984)
  decide +kernel
#print axioms cover_1562984

def state_1563035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 85 else 88)))
def hex_1563035 : String := "4140060A404442080808440A0A"
theorem cover_1563035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563035 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1563035)
  decide +kernel
#print axioms cover_1563035

def state_1563048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 88)))
def hex_1563048 : String := "434105404442430908094208084442434105400905410540440A080A43050542430541054008440A05054140080A40440808440A4342080808"
theorem cover_1563048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563048 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1563048)
  decide +kernel
#print axioms cover_1563048
end Mub6.Numerical.CircleFullD0.Forest
