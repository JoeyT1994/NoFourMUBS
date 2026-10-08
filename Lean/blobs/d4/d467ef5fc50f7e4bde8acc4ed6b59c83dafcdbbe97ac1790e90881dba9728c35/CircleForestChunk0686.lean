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
def state_1465460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 62 else (if j.val < 4 then 31 else 43)))
def hex_1465460 : String := "43404144050A4407064105440542064306400641050640410A44090A41054405420A4340410A0641054405060A"
theorem cover_1465460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1465460)
  decide +kernel
#print axioms cover_1465460

def state_1465506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 63 else (if j.val < 4 then 62 else 43)))
def hex_1465506 : String := "4041440508074105440543074240410706410544050607"
theorem cover_1465506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1465506)
  decide +kernel
#print axioms cover_1465506

def state_1465530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 43) else (if j.val < 3 then 63 else (if j.val < 4 then 63 else 43)))
def hex_1465530 : String := "4144050844074243410A070A4307410807"
theorem cover_1465530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1465530)
  decide +kernel
#print axioms cover_1465530

def state_1465547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 43) else (if j.val < 3 then 63 else (if j.val < 4 then 63 else 43)))
def hex_1465547 : String := "410544054243404144050A4407064105440542430640060543400605E640410A44090A41054405420A0A434041070741054405430707E6"
theorem cover_1465547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1465547)
  decide +kernel
#print axioms cover_1465547

def state_1465603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
def hex_1465603 : String := "430644400A410A420643060A0A"
theorem cover_1465603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1465603)
  decide +kernel
#print axioms cover_1465603

def state_1465617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
def hex_1465617 : String := "44404109060909"
theorem cover_1465617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1465617)
  decide +kernel
#print axioms cover_1465617

def state_1465626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 22)))
def hex_1465626 : String := "4108420608"
theorem cover_1465626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465626 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1465626)
  decide +kernel
#print axioms cover_1465626

def state_1465632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 22)))
def hex_1465632 : String := "420A08"
theorem cover_1465632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465632 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1465632)
  decide +kernel
#print axioms cover_1465632

def state_1465636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 15 else 22)))
def hex_1465636 : String := "43444006060644400A410A420643060A0A"
theorem cover_1465636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1465636)
  decide +kernel
#print axioms cover_1465636

def state_1465654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 30 else 22)))
def hex_1465654 : String := "44404108064109430642060909"
theorem cover_1465654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1465654)
  decide +kernel
#print axioms cover_1465654

def state_1465669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 44)))
def hex_1465669 : String := "4108420A08"
theorem cover_1465669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1465669)
  decide +kernel
#print axioms cover_1465669
end Mub6.Numerical.CircleFullD0.Forest
