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
def state_2248489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 13)))
def hex_2248489 : String := "42434407074440414306440607074143054442080508430744420706074007084305440640414243050805074105424305444007050705"
theorem cover_2248489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2248489)
  decide +kernel
#print axioms cover_2248489

def state_2248544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 13)))
def hex_2248544 : String := "41424305080542434405054440410843054440420805050809084305440540410542080505"
theorem cover_2248544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_2248544)
  decide +kernel
#print axioms cover_2248544

def state_2248584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
def hex_2248584 : String := "4344064206054406424006410643060606"
theorem cover_2248584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2248584)
  decide +kernel
#print axioms cover_2248584

def state_2248603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 24)))
def hex_2248603 : String := "420605"
theorem cover_2248603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2248603)
  decide +kernel
#print axioms cover_2248603

def state_2248608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
def hex_2248608 : String := "41430606434406074406420706"
theorem cover_2248608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2248608)
  decide +kernel
#print axioms cover_2248608

def state_2248622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
def hex_2248622 : String := "43440542400608054406420906"
theorem cover_2248622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2248622)
  decide +kernel
#print axioms cover_2248622

def state_2248635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
def hex_2248635 : String := "4344420A054240074109070644424043060643440641060A44064106420706064240430741440607074341090A410944090940064306410644064240060906"
theorem cover_2248635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2248635)
  decide +kernel
#print axioms cover_2248635

def state_2248698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 25)))
def hex_2248698 : String := "06"
theorem cover_2248698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248698 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2248698)
  decide +kernel
#print axioms cover_2248698

def state_2248700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 24)))
def hex_2248700 : String := "42400643060606"
theorem cover_2248700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2248700)
  decide +kernel
#print axioms cover_2248700

def state_2248709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
def hex_2248709 : String := "434106440642070641064406420506"
theorem cover_2248709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248709 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2248709)
  decide +kernel
#print axioms cover_2248709

def state_2248726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 25)))
def hex_2248726 : String := "4406420906"
theorem cover_2248726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2248726)
  decide +kernel
#print axioms cover_2248726
end Mub6.Numerical.CircleFullD0.Forest
