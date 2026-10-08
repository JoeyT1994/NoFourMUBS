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
def state_2310444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 44)))
def hex_2310444 : String := "4142434006050606424340070A07434044064106074405410A0A06"
theorem cover_2310444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2310444)
  decide +kernel
#print axioms cover_2310444

def state_2310471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 45)))
def hex_2310471 : String := "4142434006440A090643400644060606424340440A080A084340444106080844410A0A4108084006440608"
theorem cover_2310471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_2310471)
  decide +kernel
#print axioms cover_2310471

def state_2310518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 44)))
def hex_2310518 : String := "4243050606"
theorem cover_2310518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2310518)
  decide +kernel
#print axioms cover_2310518

def state_2310524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 28 else 44)))
def hex_2310524 : String := "43404441054243050606410642434409090643440640060906440541054243054044054106084405054305400605400644064106420606"
theorem cover_2310524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310524 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2310524)
  decide +kernel
#print axioms cover_2310524

def state_2310579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 39 else (if j.val < 4 then 28 else 44)))
def hex_2310579 : String := "43404405410642060644050506"
theorem cover_2310579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2310579)
  decide +kernel
#print axioms cover_2310579

def state_2310593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 45)))
def hex_2310593 : String := "42434440060540060706430706"
theorem cover_2310593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310593 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2310593)
  decide +kernel
#print axioms cover_2310593

def state_2310610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 90)))
def hex_2310610 : String := "414206064243080608"
theorem cover_2310610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2310610)
  decide +kernel
#print axioms cover_2310610

def state_2310619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 90)))
def hex_2310619 : String := "4142434405404105080544060643050642434440414208050805400841420805084440084108080843444041050805400841050844400641050808"
theorem cover_2310619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_2310619)
  decide +kernel
#print axioms cover_2310619

def state_2310678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 91)))
def hex_2310678 : String := "40410808414243444008070708074243080808"
theorem cover_2310678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2310678)
  decide +kernel
#print axioms cover_2310678

def state_2310697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 45)))
def hex_2310697 : String := "444006410642080608"
theorem cover_2310697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310697 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2310697)
  decide +kernel
#print axioms cover_2310697
end Mub6.Numerical.CircleFullD0.Forest
