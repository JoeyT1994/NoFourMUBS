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
def state_2333329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 31)))
def hex_2333329 : String := "42404306414442400808064240430641444240060606E5084306414406424006060608060843064144420A064240430641440642090608090608400606"
theorem cover_2333329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_2333329)
  decide +kernel
#print axioms cover_2333329

def state_2333390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 15)))
def hex_2333390 : String := "4306410506"
theorem cover_2333390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2333390)
  decide +kernel
#print axioms cover_2333390

def state_2333395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 15)))
def hex_2333395 : String := "4243410606414405404243050505054408404243064109080642090606"
theorem cover_2333395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2333395)
  decide +kernel
#print axioms cover_2333395

def state_2333424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 7)))
def hex_2333424 : String := "4408404243060806420806"
theorem cover_2333424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2333424)
  decide +kernel
#print axioms cover_2333424

def state_2333437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 14)))
def hex_2333437 : String := "404243410708070807"
theorem cover_2333437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2333437)
  decide +kernel
#print axioms cover_2333437

def state_2333451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 30)))
def hex_2333451 : String := "420707"
theorem cover_2333451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2333451)
  decide +kernel
#print axioms cover_2333451

def state_2333458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
def hex_2333458 : String := "07"
theorem cover_2333458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2333458)
  decide +kernel
#print axioms cover_2333458

def state_2333460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 62)))
def hex_2333460 : String := "4240434105440742404305070707070707"
theorem cover_2333460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2333460)
  decide +kernel
#print axioms cover_2333460

def state_2333478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 96 else (if j.val < 4 then 44 else 63)))
def hex_2333478 : String := "4043414407E54442404341054408E541074407E54341054405E5074043050707E5410744074243E5070743410544074240E5070707"
theorem cover_2333478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2333478)
  decide +kernel
#print axioms cover_2333478

def state_2333531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 97 else (if j.val < 4 then 44 else 63)))
def hex_2333531 : String := "404341054405424043050705050707"
theorem cover_2333531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2333531)
  decide +kernel
#print axioms cover_2333531

def state_2333546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 45 else 31)))
def hex_2333546 : String := "07"
theorem cover_2333546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2333546)
  decide +kernel
#print axioms cover_2333546

def state_2333547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 31)))
def hex_2333547 : String := "07"
theorem cover_2333547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2333547)
  decide +kernel
#print axioms cover_2333547

def state_2333548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 31)))
def hex_2333548 : String := "4043410544054207050707"
theorem cover_2333548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333548 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2333548)
  decide +kernel
#print axioms cover_2333548

def state_2333560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 30)))
def hex_2333560 : String := "4240080808"
theorem cover_2333560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2333560)
  decide +kernel
#print axioms cover_2333560

def state_2333570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 58) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 62)))
def hex_2333570 : String := "4240080808"
theorem cover_2333570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2333570)
  decide +kernel
#print axioms cover_2333570
end Mub6.Numerical.CircleFullD0.Forest
