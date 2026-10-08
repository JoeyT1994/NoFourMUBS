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
def state_2305366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
def hex_2305366 : String := "4342440A40410A0A0A4405404105420A07054244404143050A0A0A4041430A0A0A0A4440410543420A05420A440508054041430742080743420A070841050A"
theorem cover_2305366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2305366)
  decide +kernel
#print axioms cover_2305366

def state_2305430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 45)))
def hex_2305430 : String := "4405404105424305444041050505070705"
theorem cover_2305430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2305430)
  decide +kernel
#print axioms cover_2305430

def state_2305448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 90)))
def hex_2305448 : String := "404105424305440540064105054305440540060505"
theorem cover_2305448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2305448)
  decide +kernel
#print axioms cover_2305448

def state_2305471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
def hex_2305471 : String := "4243070607"
theorem cover_2305471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2305471)
  decide +kernel
#print axioms cover_2305471

def state_2305476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
def hex_2305476 : String := "42434440414243050605424344054008050843070841054243050505404107420807074440410608414206054243080808400841070843074440060707"
theorem cover_2305476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2305476)
  decide +kernel
#print axioms cover_2305476

def state_2305537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
def hex_2305537 : String := "41054243074440410542430544050705050707"
theorem cover_2305537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2305537)
  decide +kernel
#print axioms cover_2305537

def state_2305559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 90)))
def hex_2305559 : String := "40414243064409400906430544400905400941050642060606"
theorem cover_2305559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305559 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2305559)
  decide +kernel
#print axioms cover_2305559

def state_2305584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
def hex_2305584 : String := "404142430644060643064440414243060943064409090606404142064306444008060606060606"
theorem cover_2305584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_2305584)
  decide +kernel
#print axioms cover_2305584
end Mub6.Numerical.CircleFullD0.Forest
