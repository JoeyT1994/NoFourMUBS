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
def state_2249224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 51)))
def hex_2249224 : String := "40420943410744404209060709410744404205060705420907"
theorem cover_2249224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2249224)
  decide +kernel
#print axioms cover_2249224

def state_2249249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
def hex_2249249 : String := "43410744070907"
theorem cover_2249249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2249249)
  decide +kernel
#print axioms cover_2249249

def state_2249256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 25)))
def hex_2249256 : String := "40434106440642400607060707"
theorem cover_2249256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2249256)
  decide +kernel
#print axioms cover_2249256

def state_2249272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
def hex_2249272 : String := "42444041084344060844420606084108430808084406404108430842084406084108430808"
theorem cover_2249272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2249272)
  decide +kernel
#print axioms cover_2249272

def state_2249309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
def hex_2249309 : String := "4244404109430909090844400641064342440609060740414342080A09434244090844060A42090A41074342080A0A"
theorem cover_2249309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2249309)
  decide +kernel
#print axioms cover_2249309

def state_2249360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 26)))
def hex_2249360 : String := "414344420706420740070844420906420740410807410809430744420740074307414406070707"
theorem cover_2249360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2249360)
  decide +kernel
#print axioms cover_2249360

def state_2249400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 26)))
def hex_2249400 : String := "4344420806084442084041064306060908"
theorem cover_2249400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2249400)
  decide +kernel
#print axioms cover_2249400

def state_2249418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 44 else 26)))
def hex_2249418 : String := "444240070840410607414305094307440A094207400708"
theorem cover_2249418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2249418)
  decide +kernel
#print axioms cover_2249418
end Mub6.Numerical.CircleFullD0.Forest
