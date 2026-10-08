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
def state_1529484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 19 else 22)))
def hex_1529484 : String := "404206064209440909"
theorem cover_1529484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1529484)
  decide +kernel
#print axioms cover_1529484

def state_1529493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 23)))
def hex_1529493 : String := "410843400842080708"
theorem cover_1529493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1529493)
  decide +kernel
#print axioms cover_1529493

def state_1529502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
def hex_1529502 : String := "42094441094342094044410943080909090909"
theorem cover_1529502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1529502)
  decide +kernel
#print axioms cover_1529502

def state_1529527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
def hex_1529527 : String := "404244414306400506054143050505444143064042050506064143064005060506"
theorem cover_1529527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1529527)
  decide +kernel
#print axioms cover_1529527

def state_1529560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
def hex_1529560 : String := "404244050544414340054205050505054244410A060A44414306404205440505060641430640050606"
theorem cover_1529560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1529560)
  decide +kernel
#print axioms cover_1529560

def state_1529601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
def hex_1529601 : String := "4306400506"
theorem cover_1529601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1529601)
  decide +kernel
#print axioms cover_1529601

def state_1529606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 23)))
def hex_1529606 : String := "4143404442050505064005444205414306050505430605"
theorem cover_1529606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1529606)
  decide +kernel
#print axioms cover_1529606

def state_1529632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 23 else (if j.val < 4 then 16 else 22)))
def hex_1529632 : String := "40424441430640090606414306400A06060A06"
theorem cover_1529632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529632 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1529632)
  decide +kernel
#print axioms cover_1529632

def state_1529652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 22)))
def hex_1529652 : String := "42444143400A4244060506400542054405054305054143400542050A0505440A0A"
theorem cover_1529652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529652 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1529652)
  decide +kernel
#print axioms cover_1529652

def state_1529685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 22)))
def hex_1529685 : String := "424441430640424406054406060606414306404205444143050505050606444143064240060606064143064240440606060706"
theorem cover_1529685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529685 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1529685)
  decide +kernel
#print axioms cover_1529685

def state_1529736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 22)))
def hex_1529736 : String := "43064042050A06"
theorem cover_1529736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529736 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1529736)
  decide +kernel
#print axioms cover_1529736
end Mub6.Numerical.CircleFullD0.Forest
