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
def state_2303000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 110 else 92)))
def hex_2303000 : String := "42444041430909430A420A440A0941090A40410943420A0942050941090A444041094342440A090942440909094109430909400909"
theorem cover_2303000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_2303000)
  decide +kernel
#print axioms cover_2303000

def state_2303053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 111 else 92)))
def hex_2303053 : String := "4244404109434207440A090841090A4041090509444041064309060909"
theorem cover_2303053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2303053)
  decide +kernel
#print axioms cover_2303053

def state_2303082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
def hex_2303082 : String := "410943420A440A09420A09"
theorem cover_2303082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2303082)
  decide +kernel
#print axioms cover_2303082

def state_2303093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 93)))
def hex_2303093 : String := "404109434244400909090942440905094109430909"
theorem cover_2303093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2303093)
  decide +kernel
#print axioms cover_2303093

def state_2303114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 46)))
def hex_2303114 : String := "44404109434244404109C409090942444009090909410743070940410743090907"
theorem cover_2303114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2303114)
  decide +kernel
#print axioms cover_2303114

def state_2303147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
def hex_2303147 : String := "4107430842444041050A0540090707"
theorem cover_2303147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303147 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2303147)
  decide +kernel
#print axioms cover_2303147

def state_2303162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 47)))
def hex_2303162 : String := "404107434244404107430609070907424440090909094107430707"
theorem cover_2303162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303162 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2303162)
  decide +kernel
#print axioms cover_2303162

def state_2303189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
def hex_2303189 : String := "410844054306424044080606404441054305050707"
theorem cover_2303189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_2303189)
  decide +kernel
#print axioms cover_2303189
end Mub6.Numerical.CircleFullD0.Forest
