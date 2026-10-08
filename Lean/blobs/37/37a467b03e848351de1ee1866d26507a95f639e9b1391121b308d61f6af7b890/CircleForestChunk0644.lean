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
def state_760241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
def hex_760241 : String := "4442440940414307420744430709070709444041430644064243060906080640414342070542444308400808070808410A09420740070A"
theorem cover_760241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760241 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_760241)
  decide +kernel
#print axioms cover_760241

def state_760298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 6)))
def hex_760298 : String := "4344094041424309064344090A440940060909094409400609"
theorem cover_760298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_760298)
  decide +kernel
#print axioms cover_760298

def state_760325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 12)))
def hex_760325 : String := "404144420943060742430909430840410708090909"
theorem cover_760325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_760325)
  decide +kernel
#print axioms cover_760325

def state_760349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 13)))
def hex_760349 : String := "434440414244090A44080508410A090A4440414243440905440905430505420943080941420943090909404105420605410A0A"
theorem cover_760349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_760349)
  decide +kernel
#print axioms cover_760349

def state_760400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 13)))
def hex_760400 : String := "434408054440410508414305050805"
theorem cover_760400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_760400)
  decide +kernel
#print axioms cover_760400

def state_760415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 13)))
def hex_760415 : String := "4243440807440941400709074308440808"
theorem cover_760415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_760415)
  decide +kernel
#print axioms cover_760415

def state_760432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 13)))
def hex_760432 : String := "4142430A44090A43064440410609060A420909"
theorem cover_760432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_760432)
  decide +kernel
#print axioms cover_760432

def state_760452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 12)))
def hex_760452 : String := "4041070909"
theorem cover_760452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_760452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_760452)
  decide +kernel
#print axioms cover_760452
end Mub6.Numerical.CircleFullPrototype.Forest
