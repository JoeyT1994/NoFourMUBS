import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1487516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 54)))
def hex_1487516 : String := "4043414244050707420507410742050743414244050707420507410707"
theorem cover_1487516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 29) (hex := hex_1487516)
  decide +kernel
#print axioms cover_1487516

def state_1487546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 55)))
def hex_1487546 : String := "43414244400A4307070A0A424440430A41070543410707070A0A41424440430707430706080A42444043410705050508440707"
theorem cover_1487546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1487546)
  decide +kernel
#print axioms cover_1487546

def state_1487597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 55)))
def hex_1487597 : String := "4341420907424440430707070907414206074244050607"
theorem cover_1487597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487597 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1487597)
  decide +kernel
#print axioms cover_1487597

def state_1487620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 37) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 27)))
def hex_1487620 : String := "4407400707"
theorem cover_1487620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1487620)
  decide +kernel
#print axioms cover_1487620

def state_1487625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 27)))
def hex_1487625 : String := "4142444043070707404342060706060742444043410705074307074043414208074208070843410642060706440707"
theorem cover_1487625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1487625)
  decide +kernel
#print axioms cover_1487625

def state_1487674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 27)))
def hex_1487674 : String := "41424440064305054043410A060843414244050A0A424405400605064142080942050944064006430607424405400643060506"
theorem cover_1487674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1487674)
  decide +kernel
#print axioms cover_1487674

def state_1487725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 27)))
def hex_1487725 : String := "41424405400843410805050909"
theorem cover_1487725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487725 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1487725)
  decide +kernel
#print axioms cover_1487725
end Mub6.Numerical.CircleFullD0.Forest
