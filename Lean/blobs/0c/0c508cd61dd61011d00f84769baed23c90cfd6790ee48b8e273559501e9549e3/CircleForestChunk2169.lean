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
def state_2601209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_2601209 : String := "4243064440094306444109060640430607430641090643440908440909"
theorem cover_2601209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2601209)
  decide +kernel
#print axioms cover_2601209

def state_2601238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_2601238 : String := "4243064406064344060644404109420605414243060505054041094206094142060806"
theorem cover_2601238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2601238)
  decide +kernel
#print axioms cover_2601238

def state_2601275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_2601275 : String := "4142430A4440070607434408420A43440840080A08440642440807440640080A424308074344080808"
theorem cover_2601275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601275 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2601275)
  decide +kernel
#print axioms cover_2601275

def state_2601316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_2601316 : String := "414243440A0A44060A430A44060A42430A444007060A4344084041420A43050808410A054408404142070808410A420A08"
theorem cover_2601316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2601316)
  decide +kernel
#print axioms cover_2601316

def state_2601366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2601366 : String := "41420743444243440707074344400A094007090A070742074344414207430907070707"
theorem cover_2601366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2601366)
  decide +kernel
#print axioms cover_2601366

def state_2601402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2601402 : String := "42434440430907434441090909444109070707074344404243090A43090A4243440A090A43090A09440A07"
theorem cover_2601402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2601402)
  decide +kernel
#print axioms cover_2601402
end Mub6.Numerical.CircleFullD0.Forest
