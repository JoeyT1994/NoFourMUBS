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
def state_2243399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_2243399 : String := "40414243440940094105080943440540090506094142430506054243084406084344060806"
theorem cover_2243399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2243399)
  decide +kernel
#print axioms cover_2243399

def state_2243440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 10)))
def hex_2243440 : String := "43400A410A444208080A0A"
theorem cover_2243440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243440 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2243440)
  decide +kernel
#print axioms cover_2243440

def state_2243453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 10)))
def hex_2243453 : String := "410A44090A"
theorem cover_2243453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2243453)
  decide +kernel
#print axioms cover_2243453

def state_2243459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 10)))
def hex_2243459 : String := "44050A"
theorem cover_2243459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243459 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2243459)
  decide +kernel
#print axioms cover_2243459

def state_2243462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 10)))
def hex_2243462 : String := "44424340090509094243400A410A44080A0A4340410A09410544054243400A410544050A0A4340410A0941054405420A43E60940094105094009410609"
theorem cover_2243462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 61) (hex := hex_2243462)
  decide +kernel
#print axioms cover_2243462

def state_2243523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 9 else 10)))
def hex_2243523 : String := "4009410609"
theorem cover_2243523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2243523)
  decide +kernel
#print axioms cover_2243523

def state_2243528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 11)))
def hex_2243528 : String := "420A4344400A410A420A43440A0A0A0A0A"
theorem cover_2243528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2243528)
  decide +kernel
#print axioms cover_2243528

def state_2243546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
def hex_2243546 : String := "424341400944080808094341400944094243414009080809090909"
theorem cover_2243546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_2243546)
  decide +kernel
#print axioms cover_2243546

def state_2243574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 11)))
def hex_2243574 : String := "4341444005420643060A0505410A05"
theorem cover_2243574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2243574)
  decide +kernel
#print axioms cover_2243574

def state_2243589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 11)))
def hex_2243589 : String := "4341444005424341440A05050A43414440054243410A050A43414440054243410A4409050943E6090505410A050505410A050505410A05"
theorem cover_2243589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 55) (hex := hex_2243589)
  decide +kernel
#print axioms cover_2243589
end Mub6.Numerical.CircleFullD0.Forest
