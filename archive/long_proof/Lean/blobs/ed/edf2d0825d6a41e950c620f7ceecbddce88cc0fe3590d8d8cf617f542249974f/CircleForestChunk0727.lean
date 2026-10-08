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
def state_1475439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 385 else 176) else (if j.val < 3 then 131 else (if j.val < 4 then 178 else 232)))
def hex_1475439 : String := "43414442860A0A4442860842864005430505414442864043410606410606094286400A094442864043060608428640430505434108054144080508"
theorem cover_1475439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1475439)
  decide +kernel
#print axioms cover_1475439

def state_1475498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 65 else (if j.val < 4 then 178 else 233)))
def hex_1475498 : String := "4286404305410505430A410A4442860505"
theorem cover_1475498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1475498)
  decide +kernel
#print axioms cover_1475498

def state_1475515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 177) else (if j.val < 3 then 65 else (if j.val < 4 then 178 else 116)))
def hex_1475515 : String := "44428640434144420505050541444286060509434144084286054408054144428608428640054305084408428605428640054305410505"
theorem cover_1475515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475515 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1475515)
  decide +kernel
#print axioms cover_1475515

def state_1475572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 232)))
def hex_1475572 : String := "4240074386074043410707074341444286400709428640070944428640074308074286400743414407074407050707"
theorem cover_1475572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475572 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1475572)
  decide +kernel
#print axioms cover_1475572

def state_1475619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 233)))
def hex_1475619 : String := "4240074386074007434144420740070942070544428640054305070507"
theorem cover_1475619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1475619)
  decide +kernel
#print axioms cover_1475619
end Mub6.Numerical.CircleFullD0.Forest
