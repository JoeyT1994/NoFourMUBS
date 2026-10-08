import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_388638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 94)))
def hex_388638 : String := "4042410608410643440640060806424143084406420706084143444006074042410608090A0643084440060740064208410608"
theorem cover_388638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388638 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_388638)
  decide +kernel
#print axioms cover_388638

def state_388690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 95)))
def hex_388690 : String := "42410505414344400542050505064344400542050905440605"
theorem cover_388690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388690 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_388690)
  decide +kernel
#print axioms cover_388690

def state_388716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 56) else (if j.val < 3 then 98 else (if j.val < 4 then 56 else 95)))
def hex_388716 : String := "414344420540050505444205400507054308440805"
theorem cover_388716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_388716)
  decide +kernel
#print axioms cover_388716

def state_388738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 112) else (if j.val < 3 then 99 else (if j.val < 4 then 56 else 95)))
def hex_388738 : String := "43444042050A0A40050A4440064207B5404205054205B5"
theorem cover_388738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 23) (hex := hex_388738)
  decide +kernel
#print axioms cover_388738

def state_388761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 113) else (if j.val < 3 then 99 else (if j.val < 4 then 56 else 95)))
def hex_388761 : String := "4344404208094208B5404205054205B54440424105054106430806424143080608B540420541050542410505B5"
theorem cover_388761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_388761)
  decide +kernel
#print axioms cover_388761

def state_388806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 57 else 47)))
def hex_388806 : String := "4406400642434106440A05064341064406400642430505B506"
theorem cover_388806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388806 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_388806)
  decide +kernel
#print axioms cover_388806

def state_388831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 47)))
def hex_388831 : String := "434408404208414308440A0507420841430844084042054105054208B508440A400A420A41434440064208B5400A420AB5060A"
theorem cover_388831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_388831)
  decide +kernel
#print axioms cover_388831

def state_388882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 23)))
def hex_388882 : String := "4006420A440641060A"
theorem cover_388882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388882 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_388882)
  decide +kernel
#print axioms cover_388882
end Mub6.Numerical.CircleFullPrototype.Forest
