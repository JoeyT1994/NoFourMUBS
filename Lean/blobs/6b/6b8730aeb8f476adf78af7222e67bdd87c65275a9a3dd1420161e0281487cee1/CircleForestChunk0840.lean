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
def state_1502270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 40) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 57)))
def hex_1502270 : String := "42404344410905094405410605094043444107074142090742400707074441070741420607424043070507074344074107074407410607"
theorem cover_1502270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502270 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1502270)
  decide +kernel
#print axioms cover_1502270

def state_1502325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 41) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 57)))
def hex_1502325 : String := "420540434441070541424043070507074205074405414205070543440541070505"
theorem cover_1502325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1502325)
  decide +kernel
#print axioms cover_1502325

def state_1502358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 28)))
def hex_1502358 : String := "44414205400505054142054043444107054142060742050744054106054344410605060605"
theorem cover_1502358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502358 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1502358)
  decide +kernel
#print axioms cover_1502358

def state_1502395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
def hex_1502395 : String := "434441420508054142064043080906420540430805054405410605"
theorem cover_1502395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1502395)
  decide +kernel
#print axioms cover_1502395

def state_1502426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 40) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 58)))
def hex_1502426 : String := "4209404344410A4209070A44410642060706430906"
theorem cover_1502426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502426 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1502426)
  decide +kernel
#print axioms cover_1502426

def state_1502448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 58)))
def hex_1502448 : String := "40434442054109054206410609440506430906"
theorem cover_1502448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1502448)
  decide +kernel
#print axioms cover_1502448
end Mub6.Numerical.CircleFullD0.Forest
