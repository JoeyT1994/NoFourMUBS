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
def state_1491233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 39 else (if j.val < 4 then 100 else 59)))
def hex_1491233 : String := "4244404341070607434109080A40074341090707444006084043414244060706064142070642070643410808414209084244070708"
theorem cover_1491233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1491233)
  decide +kernel
#print axioms cover_1491233

def state_1491287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 39 else (if j.val < 4 then 101 else 59)))
def hex_1491287 : String := "424440070907444043414207440607420706410707434109420944060941094205440507404341070707430909"
theorem cover_1491287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1491287)
  decide +kernel
#print axioms cover_1491287

def state_1491332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 39 else (if j.val < 4 then 101 else 59)))
def hex_1491332 : String := "4244070744404306074341420A080A0A4043410707074341420744400708074207440A07410707"
theorem cover_1491332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1491332)
  decide +kernel
#print axioms cover_1491332

def state_1491373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 29)))
def hex_1491373 : String := "4440070507"
theorem cover_1491373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1491373)
  decide +kernel
#print axioms cover_1491373

def state_1491379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 58)))
def hex_1491379 : String := "404341420744400605400743410707074205440540064307054108420505434142054405404309410705094205440540434105050505410505"
theorem cover_1491379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491379 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1491379)
  decide +kernel
#print axioms cover_1491379

def state_1491436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 59)))
def hex_1491436 : String := "404341084207440707084341094207444043070709400709410842074440070507"
theorem cover_1491436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491436 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1491436)
  decide +kernel
#print axioms cover_1491436
end Mub6.Numerical.CircleFullD0.Forest
