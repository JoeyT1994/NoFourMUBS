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
def state_2291216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 55 else 45)))
def hex_2291216 : String := "42440741400743070707444140064342074405060607414006434244414006080741400608074441064006430806410640064308064206064007430707"
theorem cover_2291216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291216 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_2291216)
  decide +kernel
#print axioms cover_2291216

def state_2291278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
def hex_2291278 : String := "444006430505400643424108440840430806084105440540060506"
theorem cover_2291278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291278 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2291278)
  decide +kernel
#print axioms cover_2291278

def state_2291306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 44)))
def hex_2291306 : String := "404342410607060643424105440540430707054105440540430505054241064406400643050606"
theorem cover_2291306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2291306)
  decide +kernel
#print axioms cover_2291306

def state_2291346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
def hex_2291346 : String := "4342444106074140064342440606060640074342074441060741060707440641064006434244060A060606"
theorem cover_2291346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2291346)
  decide +kernel
#print axioms cover_2291346

def state_2291392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 90)))
def hex_2291392 : String := "4140430806054043420744084108400708420744064106074308424407410807440541054043070705"
theorem cover_2291392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2291392)
  decide +kernel
#print axioms cover_2291392

def state_2291434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 102) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 91)))
def hex_2291434 : String := "404308424406060608"
theorem cover_2291434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2291434)
  decide +kernel
#print axioms cover_2291434
end Mub6.Numerical.CircleFullD0.Forest
