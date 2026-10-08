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
def state_1539429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 20)))
def hex_1539429 : String := "42434144094009420A09094144074007420743410A07070743094144090909"
theorem cover_1539429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1539429)
  decide +kernel
#print axioms cover_1539429

def state_1539461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 20)))
def hex_1539461 : String := "4308414408404243080743414408400A080841440740064208080708440708"
theorem cover_1539461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1539461)
  decide +kernel
#print axioms cover_1539461

def state_1539492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 20)))
def hex_1539492 : String := "434144084009080841444042080908404243414408090941444007084042410609094241430505084105094407400908094208430841440805084408400908"
theorem cover_1539492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_1539492)
  decide +kernel
#print axioms cover_1539492

def state_1539556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 21)))
def hex_1539556 : String := "4340424405050505404244410643400642060506064441054305060642444105430540064244410543050605054105430506440505"
theorem cover_1539556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_1539556)
  decide +kernel
#print axioms cover_1539556

def state_1539610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 21)))
def hex_1539610 : String := "40420A094244410A0841070A440907"
theorem cover_1539610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1539610)
  decide +kernel
#print axioms cover_1539610
end Mub6.Numerical.CircleFullD0.Forest
