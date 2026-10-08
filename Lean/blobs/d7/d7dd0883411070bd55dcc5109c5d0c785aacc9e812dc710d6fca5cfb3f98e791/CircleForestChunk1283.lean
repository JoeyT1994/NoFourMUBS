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
def state_1608448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 45) else (if j.val < 3 then 55 else (if j.val < 4 then 58 else 49)))
def hex_1608448 : String := "44414007430A42440A0A0A40074342060742444140070608074441070707410707"
theorem cover_1608448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1608448)
  decide +kernel
#print axioms cover_1608448

def state_1608481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 59 else 49)))
def hex_1608481 : String := "4244084140074342084408070808444140420705424344410A084107074408410707430A4405074007420843444140050A070744080741400742070707"
theorem cover_1608481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1608481)
  decide +kernel
#print axioms cover_1608481

def state_1608543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
def hex_1608543 : String := "424341440707070807"
theorem cover_1608543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1608543)
  decide +kernel
#print axioms cover_1608543

def state_1608553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
def hex_1608553 : String := "434144404205070505054144404208430707420543444140420507050505444140080908414005050540420507054440080505"
theorem cover_1608553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1608553)
  decide +kernel
#print axioms cover_1608553

def state_1608605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 25)))
def hex_1608605 : String := "41444007430A4244410A07070707444007430542050707"
theorem cover_1608605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608605 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1608605)
  decide +kernel
#print axioms cover_1608605

def state_1608629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 25)))
def hex_1608629 : String := "4440074342444140074307420707400743050707074244414007434207074207074007430707070707"
theorem cover_1608629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1608629)
  decide +kernel
#print axioms cover_1608629

def state_1608670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 25)))
def hex_1608670 : String := "44400743424144070505074241444007430707074407050707"
theorem cover_1608670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1608670)
  decide +kernel
#print axioms cover_1608670

def state_1608697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
def hex_1608697 : String := "420843414408070808"
theorem cover_1608697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608697 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1608697)
  decide +kernel
#print axioms cover_1608697
end Mub6.Numerical.CircleFullD0.Forest
