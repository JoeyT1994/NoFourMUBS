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
def state_1040369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
def hex_1040369 : String := "404143080543420808420508410808"
theorem cover_1040369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040369 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1040369)
  decide +kernel
#print axioms cover_1040369

def state_1040388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 14)))
def hex_1040388 : String := "444240410909090942404108080808"
theorem cover_1040388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1040388)
  decide +kernel
#print axioms cover_1040388

def state_1040405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
def hex_1040405 : String := "40414344424041090606094240410A4309060A40410A0909440642054041434442050605050606434406420609064143090606"
theorem cover_1040405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1040405)
  decide +kernel
#print axioms cover_1040405

def state_1040459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 42 else 28)))
def hex_1040459 : String := "09"
theorem cover_1040459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040459 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040459)
  decide +kernel
#print axioms cover_1040459

def state_1040461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 56)))
def hex_1040461 : String := "424041430906060609"
theorem cover_1040461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1040461)
  decide +kernel
#print axioms cover_1040461

def state_1040471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
def hex_1040471 : String := "40414344090A4442064041430906060642054041430A054344090806410A06430944064206064143090606"
theorem cover_1040471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1040471)
  decide +kernel
#print axioms cover_1040471

def state_1040514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
def hex_1040514 : String := "4041430944424041430908090909424041430A444240410A43090607850A43094442060942404105060685410A098543094409424041430944060809060909"
theorem cover_1040514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 63) (hex := hex_1040514)
  decide +kernel
#print axioms cover_1040514

def state_1040577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
def hex_1040577 : String := "43094409424041430906060609"
theorem cover_1040577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1040577)
  decide +kernel
#print axioms cover_1040577

def state_1040590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
def hex_1040590 : String := "09"
theorem cover_1040590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040590)
  decide +kernel
#print axioms cover_1040590
end Mub6.Numerical.CircleFullD0.Forest
