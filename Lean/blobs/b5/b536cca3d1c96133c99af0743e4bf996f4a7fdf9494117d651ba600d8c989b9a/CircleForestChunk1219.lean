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
def state_1592910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 51)))
def hex_1592910 : String := "404244080707424443050A05444341400742054405054007054140074205444107070540070543054140060505"
theorem cover_1592910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1592910)
  decide +kernel
#print axioms cover_1592910

def state_1592957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 38) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
def hex_1592957 : String := "43400944094241090909400944094241090909"
theorem cover_1592957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1592957)
  decide +kernel
#print axioms cover_1592957

def state_1592977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 56 else 50)))
def hex_1592977 : String := "4044090744424109430909094241434007094007094340074406074007440907410909"
theorem cover_1592977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1592977)
  decide +kernel
#print axioms cover_1592977

def state_1593012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 57 else 50)))
def hex_1593012 : String := "4044090744424309410909094243414007094007440907414007094007440907430909"
theorem cover_1593012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1593012)
  decide +kernel
#print axioms cover_1593012

def state_1593048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 38) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 51)))
def hex_1593048 : String := "43404207064244414308400608434007084007424408070841430840060843070744410809410807400642444143400608064340064244090707060606"
theorem cover_1593048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593048 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1593048)
  decide +kernel
#print axioms cover_1593048

def state_1593109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 51)))
def hex_1593109 : String := "4340074244414340074205074007424407050743070741070744410707074006424443414007420707074107074307074443070707"
theorem cover_1593109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1593109)
  decide +kernel
#print axioms cover_1593109
end Mub6.Numerical.CircleFullD0.Forest
