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
def state_1518467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
def hex_1518467 : String := "4041064206434440410642060806060606"
theorem cover_1518467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1518467)
  decide +kernel
#print axioms cover_1518467

def state_1518484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
def hex_1518484 : String := "430844424041430844070743084407070808424041434407050643440742400706074442400706074206074106084041070707"
theorem cover_1518484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1518484)
  decide +kernel
#print axioms cover_1518484

def state_1518537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 7)))
def hex_1518537 : String := "4408414308404244414308060806080808"
theorem cover_1518537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1518537)
  decide +kernel
#print axioms cover_1518537

def state_1518555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
def hex_1518555 : String := "414042054308054205080A"
theorem cover_1518555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1518555)
  decide +kernel
#print axioms cover_1518555

def state_1518568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
def hex_1518568 : String := "42434441060A060643444140424308440806080808414042064306060640420608064441404206434407064405060640420543080505410640420643060606"
theorem cover_1518568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518568 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1518568)
  decide +kernel
#print axioms cover_1518568

def state_1518631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
def hex_1518631 : String := "4206430806"
theorem cover_1518631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518631 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1518631)
  decide +kernel
#print axioms cover_1518631

def state_1518636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
def hex_1518636 : String := "4042430A0A434408410808440A4140420643080A060A420608"
theorem cover_1518636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1518636)
  decide +kernel
#print axioms cover_1518636

def state_1518661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
def hex_1518661 : String := "4308440841424043084441070841424007060742404307070607080708"
theorem cover_1518661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518661 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 29) (hex := hex_1518661)
  decide +kernel
#print axioms cover_1518661
end Mub6.Numerical.CircleFullD0.Forest
