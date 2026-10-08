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
def state_978227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 177) else (if j.val < 3 then 125 else (if j.val < 4 then 87 else 115)))
def hex_978227 : String := "4344424041054307054105064041430944420509054307440607410909420540070844420540414344060505060605"
theorem cover_978227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_978227)
  decide +kernel
#print axioms cover_978227

def state_978275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 89) else (if j.val < 3 then 62 else (if j.val < 4 then 86 else 57)))
def hex_978275 : String := "44424041430944094240070607090909424007414307440905074007410907"
theorem cover_978275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978275 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_978275)
  decide +kernel
#print axioms cover_978275

def state_978306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 89) else (if j.val < 3 then 62 else (if j.val < 4 then 87 else 57)))
def hex_978306 : String := "444206400A06424041434442050705054307050640414307440A050741434442060907440605430706"
theorem cover_978306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_978306)
  decide +kernel
#print axioms cover_978306

def state_978348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
def hex_978348 : String := "41434442400641060505064442400A4143440842400641060706080A400A4143050805424007414306444240064106070606070743070A"
theorem cover_978348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978348 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_978348)
  decide +kernel
#print axioms cover_978348

def state_978405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 63 else (if j.val < 4 then 86 else 57)))
def hex_978405 : String := "444240414305440542400609050509054240410607410A43074409074006410607"
theorem cover_978405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_978405)
  decide +kernel
#print axioms cover_978405
end Mub6.Numerical.CircleFullD0.Forest
