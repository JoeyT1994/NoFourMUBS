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
def state_1629103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 97 else 33)))
def hex_1629103 : String := "40440A0A4443414240070740440A0A4409430507420740064406054142070907434142070A0A0A"
theorem cover_1629103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1629103)
  decide +kernel
#print axioms cover_1629103

def state_1629142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 104) else (if j.val < 3 then 105 else (if j.val < 4 then 97 else 33)))
def hex_1629142 : String := "4006444341424006440643414205050506060606434142400A4443050A0540064406430506420A0641420A0606"
theorem cover_1629142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_1629142)
  decide +kernel
#print axioms cover_1629142

def state_1629187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 105) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
def hex_1629187 : String := "4240064443420A06060A06"
theorem cover_1629187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1629187)
  decide +kernel
#print axioms cover_1629187

def state_1629199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 32)))
def hex_1629199 : String := "4341424044D343054109050540444341070909434105054109090942404443050905054044064305060541420909420909"
theorem cover_1629199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_1629199)
  decide +kernel
#print axioms cover_1629199

def state_1629249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
def hex_1629249 : String := "4142054044430541420505050505420505"
theorem cover_1629249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1629249)
  decide +kernel
#print axioms cover_1629249

def state_1629266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
def hex_1629266 : String := "4142404443410905094305070540444341090909434142050505414209094205090942404443050905054044434142050505064305414205050505"
theorem cover_1629266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1629266)
  decide +kernel
#print axioms cover_1629266

def state_1629326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 16)))
def hex_1629326 : String := "440643414240064406430741424006070606060606"
theorem cover_1629326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629326 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_1629326)
  decide +kernel
#print axioms cover_1629326
end Mub6.Numerical.CircleFullD0.Forest
