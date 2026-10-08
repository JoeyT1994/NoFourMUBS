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
def state_145213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 41)))
def hex_145213 : String := "41424306084344400A06080A42084344400841420643064406060808444008414208434407080A420843080808"
theorem cover_145213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_145213)
  decide +kernel
#print axioms cover_145213

def state_145258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 41)))
def hex_145258 : String := "41420643064406064243064406064306444041420643068042430680434406068006400806"
theorem cover_145258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145258 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_145258)
  decide +kernel
#print axioms cover_145258

def state_145296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 20)))
def hex_145296 : String := "440740424143064407064305440505074206410605"
theorem cover_145296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_145296)
  decide +kernel
#print axioms cover_145296

def state_145318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 40)))
def hex_145318 : String := "4042410744070707424144074306074407430740070707"
theorem cover_145318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_145318)
  decide +kernel
#print axioms cover_145318

def state_145342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 41)))
def hex_145342 : String := "424143444007070A0A4344400707400542080544400A42410A43074407084107070A41434407070A4344050544070A"
theorem cover_145342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_145342)
  decide +kernel
#print axioms cover_145342

def state_145391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 112) else (if j.val < 3 then 114 else (if j.val < 4 then 59 else 41)))
def hex_145391 : String := "4306444042410643060A4107070609"
theorem cover_145391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145391 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_145391)
  decide +kernel
#print axioms cover_145391

def state_145406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 113) else (if j.val < 3 then 114 else (if j.val < 4 then 59 else 41)))
def hex_145406 : String := "4344400706404206410605064440424143440606804344074007068041070742410643068041074306804042410A444308080841094443050A09420609"
theorem cover_145406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145406 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_145406)
  decide +kernel
#print axioms cover_145406
end Mub6.Numerical.CircleFullPrototype.Forest
