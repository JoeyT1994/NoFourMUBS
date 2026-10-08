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
def state_2296525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 34 else (if j.val < 4 then 109 else 91)))
def hex_2296525 : String := "42074440074143080707404143420744074140074307070707074143420A4408404108060642074440070A4041430707070A430607"
theorem cover_2296525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296525 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_2296525)
  decide +kernel
#print axioms cover_2296525

def state_2296578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 91)))
def hex_2296578 : String := "430607"
theorem cover_2296578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2296578)
  decide +kernel
#print axioms cover_2296578

def state_2296583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 90)))
def hex_2296583 : String := "4143424407414007C407444140430506054007054140434244070944050606C44007C4420744410607410607430707"
theorem cover_2296583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_2296583)
  decide +kernel
#print axioms cover_2296583

def state_2296630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 90)))
def hex_2296630 : String := "41C44342074409400941050642074407400741C407"
theorem cover_2296630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296630 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2296630)
  decide +kernel
#print axioms cover_2296630

def state_2296655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 70 else (if j.val < 4 then 108 else 91)))
def hex_2296655 : String := "444140430707C407414043420744414007C407410A4005C4420744070AC44007C4"
theorem cover_2296655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2296655)
  decide +kernel
#print axioms cover_2296655

def state_2296688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 71 else (if j.val < 4 then 108 else 91)))
def hex_2296688 : String := "444140434244410607410A4007C40A06C4404342070907C44140434244410A0A0A0A0AC44043424407414005C40544410A09410A0542070AC4"
theorem cover_2296688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2296688)
  decide +kernel
#print axioms cover_2296688

def state_2296745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 109 else 91)))
def hex_2296745 : String := "4244414006C407414007C40744414006C44007C4414006C44005C4"
theorem cover_2296745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 27) (hex := hex_2296745)
  decide +kernel
#print axioms cover_2296745
end Mub6.Numerical.CircleFullD0.Forest
