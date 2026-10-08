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
def state_2245989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 24)))
def hex_2245989 : String := "4044410607414306060744414305420606430A420706414342400609054240070906430A4207400744430A410607430A410607"
theorem cover_2245989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2245989)
  decide +kernel
#print axioms cover_2245989

def state_2246040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 25)))
def hex_2246040 : String := "42074041430744070707414344090844090843074442074007430A444109070909"
theorem cover_2246040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_2246040)
  decide +kernel
#print axioms cover_2246040

def state_2246075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 24)))
def hex_2246075 : String := "400743444142074006444306060907410907444142070607410905"
theorem cover_2246075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246075 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2246075)
  decide +kernel
#print axioms cover_2246075

def state_2246103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
def hex_2246103 : String := "4344064106074406410607"
theorem cover_2246103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2246103)
  decide +kernel
#print axioms cover_2246103

def state_2246115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 24)))
def hex_2246115 : String := "4441064207064142400609064207400743444106074106074441064206064106420706"
theorem cover_2246115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2246115)
  decide +kernel
#print axioms cover_2246115

def state_2246150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 24)))
def hex_2246150 : String := "44410642070641420906424005430705400643440641064205064406410505"
theorem cover_2246150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2246150)
  decide +kernel
#print axioms cover_2246150

def state_2246181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 25)))
def hex_2246181 : String := "4240070940434144420706090741440905054341094442074007434441090709444109070909410944420540054344410905050505"
theorem cover_2246181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_2246181)
  decide +kernel
#print axioms cover_2246181
end Mub6.Numerical.CircleFullD0.Forest
