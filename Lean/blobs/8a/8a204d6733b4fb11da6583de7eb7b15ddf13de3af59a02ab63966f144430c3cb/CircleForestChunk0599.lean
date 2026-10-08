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
def state_1332503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 61 else (if j.val < 4 then 94 else 50)))
def hex_1332503 : String := "444041080841084243444041084243060A43060A0A400841074243060A06440A40080A4344400A0640084107060A400841084243444008070708430808"
theorem cover_1332503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1332503)
  decide +kernel
#print axioms cover_1332503

def state_1332564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 61 else (if j.val < 4 then 95 else 50)))
def hex_1332564 : String := "4440080A4008410808"
theorem cover_1332564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332564 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1332564)
  decide +kernel
#print axioms cover_1332564

def state_1332574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 60 else (if j.val < 4 then 47 else 50)))
def hex_1332574 : String := "05"
theorem cover_1332574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1332574)
  decide +kernel
#print axioms cover_1332574

def state_1332578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 61 else (if j.val < 4 then 94 else 100)))
def hex_1332578 : String := "41420543094407400741080505"
theorem cover_1332578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1332578)
  decide +kernel
#print axioms cover_1332578

def state_1332591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 61 else (if j.val < 4 then 94 else 100)))
def hex_1332591 : String := "4142434406400506444005064005410A05434406404142060606064440410A060640414243440A4005060A0A4205430607410A06420506"
theorem cover_1332591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1332591)
  decide +kernel
#print axioms cover_1332591

def state_1332647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 61 else (if j.val < 4 then 94 else 101)))
def hex_1332647 : String := "41420543444005410805084440054108050505"
theorem cover_1332647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332647 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1332647)
  decide +kernel
#print axioms cover_1332647

def state_1332667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 61 else (if j.val < 4 then 94 else 101)))
def hex_1332667 : String := "424344400541420506050505434440410842050606404107050744404108054142434406070A43060A42050640410805414208074205434406054440050605"
theorem cover_1332667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332667 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1332667)
  decide +kernel
#print axioms cover_1332667

def state_1332730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 61 else (if j.val < 4 then 94 else 101)))
def hex_1332730 : String := "05"
theorem cover_1332730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1332730)
  decide +kernel
#print axioms cover_1332730
end Mub6.Numerical.CircleFullD0.Forest
