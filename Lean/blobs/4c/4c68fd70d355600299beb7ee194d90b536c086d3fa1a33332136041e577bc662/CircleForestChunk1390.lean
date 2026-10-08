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
def state_1634247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 37)))
def hex_1634247 : String := "4042434144400A0505050A43414440064205060A440605410A06424305054305410905"
theorem cover_1634247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1634247)
  decide +kernel
#print axioms cover_1634247

def state_1634282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 18)))
def hex_1634282 : String := "444042434140060505060642050940420A0605"
theorem cover_1634282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634282 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1634282)
  decide +kernel
#print axioms cover_1634282

def state_1634301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 51 else 18)))
def hex_1634301 : String := "4144404207060940420706420709444006094006420706"
theorem cover_1634301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 23) (hex := hex_1634301)
  decide +kernel
#print axioms cover_1634301

def state_1634324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 19)))
def hex_1634324 : String := "43414440420A43410A050A4205054042050A0544400A05054144400A420743414409050509400A42050A44400A4205050A"
theorem cover_1634324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1634324)
  decide +kernel
#print axioms cover_1634324

def state_1634373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
def hex_1634373 : String := "424443420744400A050507430507444344400641420505054006054406064344400A0505440A0A"
theorem cover_1634373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1634373)
  decide +kernel
#print axioms cover_1634373

def state_1634412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
def hex_1634412 : String := "414244430507054443404144090505050943054041440905050542054443050905"
theorem cover_1634412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634412 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1634412)
  decide +kernel
#print axioms cover_1634412

def state_1634445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
def hex_1634445 : String := "4440410906094041420743444109094143444007070A070A0742074344060A06414207434409404107070707420743440940070507"
theorem cover_1634445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1634445)
  decide +kernel
#print axioms cover_1634445
end Mub6.Numerical.CircleFullD0.Forest
