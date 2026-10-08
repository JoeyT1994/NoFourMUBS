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
def state_1587718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 35) else (if j.val < 3 then 99 else (if j.val < 4 then 54 else 51)))
def hex_1587718 : String := "444043090908404341084244080808410842444041080908080808"
theorem cover_1587718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1587718)
  decide +kernel
#print axioms cover_1587718

def state_1587745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 55 else 51)))
def hex_1587745 : String := "414244400A084006084408064244400A43410A420A4409080A400A4341084205050A44404309064308084006430806"
theorem cover_1587745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1587745)
  decide +kernel
#print axioms cover_1587745

def state_1587792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
def hex_1587792 : String := "4341084244080508410842444308400A0543050508"
theorem cover_1587792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1587792)
  decide +kernel
#print axioms cover_1587792

def state_1587813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 25)))
def hex_1587813 : String := "434108064142070842440605440808"
theorem cover_1587813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587813 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1587813)
  decide +kernel
#print axioms cover_1587813

def state_1587828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 12)))
def hex_1587828 : String := "4440430909430808404341084244430808430808084108424440090840434108424408080841064244094006080808440808430808"
theorem cover_1587828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_1587828)
  decide +kernel
#print axioms cover_1587828

def state_1587883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 24)))
def hex_1587883 : String := "4043064142440641060644410606414043060906404306420609064206440641060606"
theorem cover_1587883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1587883)
  decide +kernel
#print axioms cover_1587883

def state_1587920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
def hex_1587920 : String := "4142440643050544064306414042440605444306404142060906064305404142050A0505054042054406050506"
theorem cover_1587920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_1587920)
  decide +kernel
#print axioms cover_1587920
end Mub6.Numerical.CircleFullD0.Forest
