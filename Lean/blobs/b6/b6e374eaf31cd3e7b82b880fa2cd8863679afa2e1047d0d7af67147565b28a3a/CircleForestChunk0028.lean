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
def state_944208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 53)))
def hex_944208 : String := "410A4340060A40424441060606064244410A430A404244410A430540420706070A0A0A0A0A"
theorem cover_944208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 37) (hex := hex_944208)
  decide +kernel
#print axioms cover_944208

def state_944246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
def hex_944246 : String := "424441054342400944080940084408410508054105094441434006424408050805434042080642440841080808400842080841054340064244410506050605"
theorem cover_944246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_944246)
  decide +kernel
#print axioms cover_944246

def state_944312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 52)))
def hex_944312 : String := "434042054441050805420744070705"
theorem cover_944312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_944312)
  decide +kernel
#print axioms cover_944312

def state_944327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 52)))
def hex_944327 : String := "4340424441070741094342074008070744084143404205084207440707054340084207084008074207440741070740420744070507"
theorem cover_944327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_944327)
  decide +kernel
#print axioms cover_944327

def state_944380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 53)))
def hex_944380 : String := "4105434042094441054340094209444107434008070709090942440709444107434042074407070707410543400907074005420505"
theorem cover_944380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 53) (hex := hex_944380)
  decide +kernel
#print axioms cover_944380

def state_944435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 52)))
def hex_944435 : String := "4340424408054408410543060542444107074105430A0544080A4005420505"
theorem cover_944435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944435 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_944435)
  decide +kernel
#print axioms cover_944435
end Mub6.Numerical.CircleFullD0.Forest
